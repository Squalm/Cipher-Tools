# Index of Coincidence
function coincidence(text, alphabet)

    alphabet_array = split(alphabet, "")

    # Git Sigma
    sigma = 0
    for letter in alphabet_array
        sigma += (count(letter, text) * (count(letter, text) - 1))
    end

    # Computer out (and calc. Index of Coincidence):
    return sigma / length(text) / (length(text) - 1) / length(alphabet_array)

end

# Columnar IoC
function columnarCoincidence(ioc, alphabet, columns)

    # Make an array containing each column

end

# Basic Frequency Analysis
function fa(input, alphabet)

    text = input
    alphabet_array = split(alphabet, "")

    # Count values in text.
    counted = Dict()
    for i in alphabet_array
        counted[i] = count(i, text) / length(text)
    end

    # Computer out:
    return counted

end
