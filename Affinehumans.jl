include("programs\\Affinefunc.jl")

while true

    # Get info in
    println("\nText [leave blank to break]:")
    human_input = readline()
    human_input == "" ? break :
    println("\nThe brute only works if the text is English so we assume that's what you're using.")
    human_alphabet = "abcdefghijklmnopqrstuvwxyz"
    println()

    println("Here's the best we got: \n", affinebrute(human_input, human_alphabet))

end
