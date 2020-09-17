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
function columnarCoincidence(text, alphabet, columns)

    # Get an alphabet only text.
    # [To do] Make this into its own function later
    alphabet_only_text = ""
    for letter in text
        if letter in alphabet
            alphabet_only_text[end + 1] = letter
        end
    end
    println(alphabet_only_text)

    # Make an array containing each column
    text_indexed = [1:length(text)]
    split_by_column
    for i in text_indexed
        #if text[i] ==

        #end
    end

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
