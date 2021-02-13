using Main.AtBashM: atbash

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default -- default is lower case]: ")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println()

    println("Decrypt:")
    println(atbash(human_input, human_alphabet))

end # while
