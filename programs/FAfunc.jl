include("Utils.jl")

# Index of Coincidence
function coincidence(text::String, alphabet::String)

    # Get Sigma
    sigma = sum([count(string(letter), text) * (count(string(letter), text) - 1) for letter in alphabet])

    # Computer out (and calc. Index of Coincidence):
    refined = removeExtras(text, alphabet)
    return sigma / length(refined) / (length(refined) - 1) / length(alphabet)

end # function


# Basic Frequency Analysis
function fa(text::String, alphabet::String)

    refined = removeExtras(text, alphabet)
    # Count values in text.
    counted = Dict()
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

        while ! eof(qfreq)

            temp = readline(qfreq)
            qfdict[temp[1:4]] = parse(Int, temp[6:end])

        end

    end

    # Score it
    score = sum([qfdict[text[i - 3:i]] for i in range(1, length = length(text)) if i > 3])

    return score

end