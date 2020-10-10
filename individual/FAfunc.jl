include("Utils.jl")

# Index of Coincidence
function coincidence(text::String, alphabet::String)

    # Get Sigma - MAKE ONE LINE WITH SUM()
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

# Overload for Arrays
function fa(text::Array{Char, 1}, alphabet::String)

    refined = removeExtras(text, alphabet)
    # Count values in text.
    counted = Dict()
    for i in alphabet
        counted[i] = count(string(i), refined) / length(refined)
    end # for

    # Computer out:
    return counted

end # function
