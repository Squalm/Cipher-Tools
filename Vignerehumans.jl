using Main.VignereM: vignerebrute

while true

    # Get info in
    println("\nText [leave blank to break]:")
    human_input = uppercase(readline())
    human_input == "" ? break :
    println("\nThe brute only works if the text is English so we assume that's what you're using.")
    human_alphabet = uppercase("abcdefghijklmnopqrstuvwxyz")
    print("\nWhat range of keylengths should we check?\nSTART: ")
    start = readline()
    print("FINISH: ")
    finish = readline()

    println("Here's the best we got: \n", vignerebrute(human_input, human_alphabet, parse(Int, start), parse(Int, finish)))

end