#module TranspositionM

#export columnarBrute

using Main.UtilsM: removeExtras
using Main.FAM: bigramFreqs, bigramScore
using ProgressBars
using Combinatorics
using StatsBase

function columnar(text, order)

    columns = length(order)
    out = Any["" for c in text]
    for i in 1:columns
        push!(out, "")
    end # for

    for i in 0:length(text)-1
        out[i - i % columns + order[i % columns + 1]] = text[i+1]
    end # for

    return join(out)

end # function

function columnarBrute(text::String, columns::Int, gens = 1000, seeds = 50)

    order = [columns - i for i in 0:columns-1]

    freqs = bigramFreqs()
    best = (order, bigramScore(columnar(text, order), freqs))

    # If swaps is 
    if gens >= 1

        orders = [sample(1:columns, columns, replace = false) for _ in 1:seeds]
        bests = [(orders[i], bigramScore(columnar(text, orders[i]), freqs)) for i in 1:seeds]

        iter = ProgressBar(1:gens)
        set_description(iter, join(best[1]))
        for _ in iter

            for i in 1:seeds

                new_order = [o for o in bests[i][1]]
                swap = [rand(1:columns), rand(1:columns)]
                new_order[swap[1]], new_order[swap[2]] = new_order[swap[2]], new_order[swap[1]]

                score = bigramScore(columnar(text, new_order), freqs)
                if score > bests[i][2]
                    bests[i] = (new_order, score) 
                end # if

            end # for

            best = bests[findmax(x -> x[2], bests)[2]]
            set_description(iter, join(best[1], " ") * ": " * columnar(text[1:max(5, columns)], best[1]) * "...")

        end # for

    # If gens is 0 or -1 (preferred), then try true brute force.
    else

        iter = ProgressBar(permutations(1:columns))
        set_description(iter, join(best[1]))

        for o in iter

            score = bigramScore(columnar(text, o), freqs)
            if score > best[2]
                best = (o, score)
                set_description(iter, join(best[1], " ") * ": " * columnar(text[1:max(5, columns)], o) * "...")
            end # if

        end # for

    end # if

    return columnar(text, best[1])

end # function

#end # module
