include("individual\\Caesarfunc.jl")

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet: ")
    human_alphabet = readline()

    shifts = caesarbrute(human_input, human_alphabet)

    for item in range(1, length = length(shifts))
        println("Shift of ", item % length(shifts), ": ", shifts[item])
    end

end