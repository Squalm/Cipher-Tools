# Index of Coincidence
function coincidence(text::String, alphabet::String)

    # Get Sigma
    sigma = 0
    for letter in alphabet
        sigma += count(string(letter), text) * (count(string(letter), text) - 1)
    end # for

    # Computer out (and calc. Index of Coincidence):
    refined = removeextras(text, alphabet)
    return sigma / length(refined) / (length(refined) - 1) / length(alphabet)

end # function


# Basic Frequency Analysis
function fa(input::String, alphabet::String)

    refined = removeextras(input, alphabet)
    # Count values in text.
    counted = Dict()
    for i in alphabet
        counted[i] = count(string(i), refined) / length(refined)
    end # for

    # Computer out:
    return counted

end # function
