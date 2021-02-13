using Main.EntropyM: entropy

while true

    println("\nText to analyse [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default]: ")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println()

    println("\nEntropy: ", entropy(uppercase(human_input), uppercase(human_alphabet)))

end # while
