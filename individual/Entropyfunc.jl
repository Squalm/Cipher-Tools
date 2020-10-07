function entropy(text::String, alphabet::String)

    refined = removeextras(text, alphabet)
    return sum([(-i) * log2(i) for i in [count(string(letter), refined) / length(refined) for letter in alphabet if occursin(letter, text)]])

end # function
