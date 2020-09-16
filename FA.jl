function coincidence(text, alphabet_array)
    
    # Find the index of coincidence
    coincidence = 0
    for letter in alphabet_array
        coincidence += (count(letter, text) * (count(letter, text) - 1)) / (length(text) * (length(text) - 1))
    end

    # Human out:
    println()
    println("Index of Coicidence: ", string(coincidence))

    # Computer out:
    return coincidence

end

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

    coincidence(text, alphabet_array)

    # Computer out:
    return counted

end

while true

    println("")
    println("Text [leave blank to break]:")
    human_input = readline()
    human_input == "" ? break :
    println("Alphabet [leave blank for default]:")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println("")
    fa(human_input, human_alphabet)

end
