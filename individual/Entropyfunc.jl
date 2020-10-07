function entropy(text::String, alphabet::String)

    counts = [count(string(letter), text) / length(text) for letter in alphabet if occursin(letter, text)]
    return sum([(-i) * log2(i) for i in counts])

end # function

println(entropy("abccd", "abcdef"))
