function entropy(text::String, alphabet::String)

    return sum([(-i) * log2(i) for i in [count(string(letter), text) / length(text) for letter in alphabet if occursin(letter, text)]])

end # function
