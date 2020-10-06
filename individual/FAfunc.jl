# Index of Coincidence
function coincidence(text::String, alphabet::String)

    # Get Sigma
    sigma = 0
    for letter in alphabet
        sigma += count(string(letter), text) * (count(string(letter), text) - 1)
    end # for

    # Computer out (and calc. Index of Coincidence):
    return sigma / length(text) / (length(text) - 1) / length(alphabet)

end # function


# Basic Frequency Analysis
function fa(input::String, alphabet::String)

    text = input
    alphabet_array = split(alphabet, "")

    # Count values in text.
    counted = Dict()
    for i in alphabet_array
        counted[i] = count(i, text) / length(text)
    end # for

    # Computer out:
    return counted

end # function
