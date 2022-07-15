module FAM

export coincidence, fa, quadgramscore, trigramscore, trigramFreqs, bigramscore, bigramFreqs

# include("Utils.jl")

using Main.UtilsM: removeExtras

"""
    coincidence(text, alphabet)

Calculates the index of coincidence of a `text` using `alphabet`.
"""
function coincidence(text::String, alphabet::String)

    refined = removeExtras(text, alphabet)
    return sum([
        count(string(letter), refined) * (count(string(letter), refined) - 1)
        for letter in alphabet
    ]) / length(refined) / (length(refined) - 1) * length(alphabet)

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

"""
    trigramFreqs()

Returns a dictionary containing all English trigrams and their frequencies.
"""
function trigramFreqs()

    qfdict = Dict()
    open("programs\\texts\\trigrams.txt", "r") do qfreq

        while !eof(qfreq)

            temp = readline(qfreq)
            qfdict[temp[1:3]] = parse(Int, temp[5:end])

        end

    end

    return qfdict

end # function

function trigramScore(text::String, fdict)

    return sum([
        get(fdict, text[i-2:i], 0) for i in range(1, length = length(text)) if i > 2
    ])

end

"""
    trigramScore(text, [fdict])

Returns a score for `text` using the scores for trigrams in `fdict` or gets the
frequencies for English if unspecified.
"""
function trigramScore(text::String)

    text = removeExtras(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    # Read the whole file into a dictionary for easy access
    qfdict = trigramFreqs()

    # Score it
    return trigramScore(text, qfdict)

end

function bigramFreqs()

    # Read the whole file into a dictionary for easy access
    qfdict = Dict()
    open("programs\\texts\\bigrams.txt", "r") do qfreq

        while !eof(qfreq)

            temp = readline(qfreq)
            qfdict[temp[1:2]] = parse(Int, temp[4:end])

        end

    end

    return qfdict

end # function

function bigramScore(text::String, fdict)

    # Score it
    return sum([
        get(fdict, text[i-1:i], 0) for i in range(1, length = length(text)) if i > 1
    ])

end # function

# Bigram analysis - ONLY WORKS FOR ENGLISH
function bigramScore(text::String)

    text = removeExtras(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    # Read the whole file into a dictionary for easy access
    qfdict = bigramFreqs()

    return bigramScore(text, qfdict)

end

end # module
