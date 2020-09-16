<<<<<<< Updated upstream
=======
function fa(input, alphabet)

    text = input
    alphabet_array = split(alphabet, "")

    # Count values in text.
    counted = Dict()
    for i in alphabet_array
        counted[i] = count(i, text) / length(text)
    end

    # Sorted out.
    println("")
    println("Count [Sorted by size]:")
    for i in sort!(collect(counted), by = x->x[2], rev = true)
        println(i)
    end
end

while true
    println("")
    println("Text:")
    human_input = readline()
    println("Alphabet [leave blank for default]:")
    human_alphabet = readline()
    if human_alphabet == ""
        human_alphabet = "abcdefghijklmnopqrstuvwxyz"
    end
    fa(human_input, human_alphabet)
end
>>>>>>> Stashed changes
