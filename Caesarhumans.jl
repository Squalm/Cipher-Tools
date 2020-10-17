include("programs\\Caesarfunc.jl")

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default]: ")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println()

    shifts = caesarshift.(uppercase(human_input), uppercase(human_alphabet), 1:length(human_alphabet))

    for item in range(1, length = length(shifts))
        println("Shift of ", item % length(shifts), ": ", shifts[item], "\n[Press enter to advance]")
        readline()
    end

end
