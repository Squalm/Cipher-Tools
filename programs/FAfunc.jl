include("Utils.jl")

# Index of Coincidence
function coincidence(text::String, alphabet::String)

    refined = removeExtras(text, alphabet)
    return sum([
        count(string(letter), text) * (count(string(letter), text) - 1)
        for letter in alphabet
    ]) / length(refined) / (length(refined) - 1) / length(alphabet)

end # function


# Basic Frequency Analysis
function fa(text::String, alphabet::String)

    refined = removeExtras(text, alphabet)
    # Count values in text.
    counted = Dict{Char, Float64}()
    for i in alphabet
        counted[i] = count(string(i), refined) / length(refined)
    end # for

    # Computer out:
    return counted

end # function

# Quadgram analysis - ONLY WORKS FOR ENGLISH
function quadgramScore(text::String)

    text = removeExtras(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    # Read the whole file into a dictionary for easy access
    qfdict = Dict()
    open("programs\\texts\\quadgrams.txt", "r") do qfreq

        while !eof(qfreq)

            temp = readline(qfreq)
            qfdict[temp[1:4]] = parse(Int, temp[6:end])

        end

    end

    # Score it
    return sum([
        get(qfdict, text[i-3:i], 0) for i in range(1, length = length(text)) if i > 3
    ])

end

# Trigram analysis - ONLY WORKS FOR ENGLISH
function trigramScore(text::String)

    text = removeExtras(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    # Read the whole file into a dictionary for easy access
    qfdict = Dict()
    open("programs\\texts\\trigrams.txt", "r") do qfreq

        while !eof(qfreq)

            temp = readline(qfreq)
            qfdict[temp[1:3]] = parse(Int, temp[5:end])

        end

    end

    # Score it
    return sum([
        get(qfdict, text[i-2:i], 0) for i in range(1, length = length(text)) if i > 2
    ])

end

# Bigram analysis - ONLY WORKS FOR ENGLISH
function bigramScore(text::String)

    text = removeExtras(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    # Read the whole file into a dictionary for easy access
    qfdict = Dict()
    open("programs\\texts\\bigrams.txt", "r") do qfreq

        while !eof(qfreq)

            temp = readline(qfreq)
            qfdict[temp[1:2]] = parse(Int, temp[4:end])

        end

    end

    # Score it
    return sum([
        get(qfdict, text[i-1:i], 0) for i in range(1, length = length(text)) if i > 1
    ])

end
