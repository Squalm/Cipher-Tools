include("programs\\Caesarfunc.jl")
include("programs\\comparisons.jl")
include("programs\\FAfunc.jl")

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default]: ")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println()

    shifts = caesarshift.(uppercase(human_input), uppercase(human_alphabet), 1:length(human_alphabet))

    best = ""
    bestscore = 0
    for shift in shifts
        score = faComparison(fa(uppercase(shift), uppercase(human_alphabet)))
        if score > bestscore
            best = shift
            bestscore = score
        end
    end

    println("We think the decryption is this (Assuming the text is in English): \n", best, "\n[Press enter to see them all]")
    readline()

    for item in range(1, length = length(shifts))
        println("\nShift of ", item % length(shifts), ": ", shifts[item])
    end

end
