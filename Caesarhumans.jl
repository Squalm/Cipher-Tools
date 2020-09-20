include("individual\\Caesarfunc.jl")

while true

    println("\nText to shift: ")
    human_input = readline()
    println("\nAlphabet: ")
    human_alphabet = readline()

    shifts = caesarbrute(human_input, human_alphabet)

    for item in range(1, length = length(shifts))
        println("Shift of ", item, ": ", shifts[item])
    end

end
