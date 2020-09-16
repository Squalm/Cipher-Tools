include("individual\\FAfunc.jl")

while true

    println("")
    println("Text [leave blank to break]:")
    human_input = readline()
    human_input == "" ? break :
    println("Alphabet [leave blank for default]:")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println("")
    println("Frequency Analysis: ")
    counted = fa(human_input, human_alphabet)
    for i in sort!(collect(counted), by = x->x[2], rev = true)
        println(i)
    end
    println("")
    println("Index of Coincidence: ")
    println(coincidence(human_input, split(human_alphabet, "")))

end
