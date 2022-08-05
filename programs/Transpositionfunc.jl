#module TranspositionM

#export columnarBrute, columnar

using Main.UtilsM: removeExtras
using Main.FAM: bigramFreqs, bigramScore
using ProgressBars
using Combinatorics
using StatsBase


function columnar(text, order, mode = "rr", filler = "X")

    columns = length(order)
    out = Any["" for c in text]

    # if write by rows, read by rows
    if mode == "rr"
        for i in 1:columns
            push!(out, "")
        end # for

        for i in 0:length(text)-1
            out[i - i % columns + order[i % columns + 1]] = text[i+1]
        end # for
    
    # If write by rows, read by columns
    elseif mode == "rc"
        out = Any[c for c in text]
        # Pad as required
        for i in 1:(columns - length(text) % columns) % columns
            push!(out, filler)
        end # for

        # Split the text into evenly sized chunks
        chunks = String[join(out[i * columns + 1:(i+1) * columns]) for i in 0:trunc(Int, length(out)/columns)-1]

        # Read off the chunks in order.
        for i in 0:length(chunks[1])-1
            for j in 1:length(chunks)
                out[i * length(chunks) + j] = chunks[j][order[i + 1]]
            end # 
        end # for

    elseif mode == "cr"
        out = Any[c for c in text]
        # Pad as required
        for i in 1:(columns - length(text) % columns) % columns
            push!(out, filler)
        end # for

        # Split the text into evenly sized chunks
        chunks = String[join(out[i * trunc(Int, length(out) / columns) + 1:(i+1) * trunc(Int, length(out) / columns)]) for i in 0:columns - 1]

        # Read off the chunks in order
        for i in 0:length(chunks[1]) - 1
            for j in 1:columns
                out[i * columns + j] = chunks[order[j]][i + 1]
            end # for
        end # for

    end # if

    return join(out)

end # function

"""
    columnarBrute(text, columns, [gens]; [seeds], [mode])

Break a columnar transposition cipher.

This can use either an evolutionary approach or brute force approach.
To use brute force, set `gens = -1`, otherwise an evolutionary approach is
used with `seeds` starting combinations.
"""
function columnarBrute(text::String, columns::Int, gens = 1000; seeds = 50, mode = "rr")

    order = [columns - i for i in 0:columns-1]

    freqs = bigramFreqs()
    best = (order, bigramScore(columnar(text, order, mode), freqs))

    # If should be using an evolutionary approach
    if gens >= 1

        orders = [sample(1:columns, columns, replace = false) for _ in 1:seeds]
        bests = [(orders[i], bigramScore(columnar(text, orders[i], mode), freqs)) for i in 1:seeds]

        iter = ProgressBar(1:gens)
        set_description(iter, join(best[1]))
        for _ in iter

            for i in 1:seeds

                new_order = [o for o in bests[i][1]]
                swap = [rand(1:columns), rand(1:columns)]
                new_order[swap[1]], new_order[swap[2]] = new_order[swap[2]], new_order[swap[1]]

                score = bigramScore(columnar(text, new_order, mode), freqs)
                if score > bests[i][2]
                    bests[i] = (new_order, score) 
                end # if

            end # for

            best = bests[findmax(x -> x[2], bests)[2]]
            set_description(iter, join(best[1], " ") * ": " * columnar(text, best[1], mode)[1:min(length(text), max(5, columns))] * "...")

        end # for

    # If gens is 0 or -1 (preferred), then try true brute force.
    else

        iter = ProgressBar(permutations(1:columns))
        set_description(iter, join(best[1]))

        for o in iter

            score = bigramScore(columnar(text, o, mode), freqs)
            if score > best[2]
                best = (o, score)
                set_description(iter, join(best[1], " ") * ": " * columnar(text, o, mode)[1:min(length(text), max(5, length(o)))] * "...")
            end # if

        end # for

    end # if

    return columnar(text, best[1], mode)

end # function

#end # module
