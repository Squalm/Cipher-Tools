include("individual\\Caesarfunc.jl")

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default]: ")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println()

    shifts = caesarshift.(human_input, human_alphabet, 1:length(human_alphabet))

    for item in range(1, length = length(shifts))
        println("Shift of ", (item + 1) % length(shifts), ": ", shifts[item])
    end

end
