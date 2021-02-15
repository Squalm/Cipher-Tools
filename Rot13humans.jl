using Main.CaesarM: rot13

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default]: ")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println()

    println("Here's our decryption:")
    println(rot13(human_input, human_alphabet))

end # while
