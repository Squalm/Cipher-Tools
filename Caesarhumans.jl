include("individual\\Caesarfunc.jl")

while true

    println("\nText to shift: ")
    human_input = readline()
    println("\nAlphabet: ")
    human_alphabet = readline()
    println("\nLeave blank to brute, int will shift text +ve: ")
    human_shift = readline()
    human_shift == "" ? println(caesarbrute(human_input, human_alphabet)) :
    println(caesarshift(human_input, human_alphabet, int(human_shift)))

end
