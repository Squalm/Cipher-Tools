function fa(input, alphabet)

    text = input
    alphabet_array = split(alphabet, "")

    # Count values in text.
    counted = Dict()
    for i in alphabet_array
        counted[i] = count(i, text) / length(text)
    end

    # Human Sorted out.
    println("")
    println("Count [Sorted by size]:")
    for i in sort!(collect(counted), by = x->x[2], rev = true)
        println(i)
    end

    # Computer out:
    return counted

end

while true
    println("")
    println("Text [leave blank to break]:")
    human_input = readline()
    if human_input == ""
        break
    end
    println("Alphabet [leave blank for default]:")
    human_alphabet = readline()
    if human_alphabet == ""
        human_alphabet = "abcdefghijklmnopqrstuvwxyz"
    end
    fa(human_input, human_alphabet)
end
