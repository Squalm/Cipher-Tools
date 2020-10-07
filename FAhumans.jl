include("individual\\FAfunc.jl")

while true

    # Get info in
    println("\nText [leave blank to break]:")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet [leave blank for default]:")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" : 
    println()
    println("\nFrequency Analysis: ")

    # Anaylse: Frequency analysis
    counted = fa(human_input, human_alphabet)
    for i in sort!(collect(counted), by = x->x[2], rev = true)
        println(i)
    end

    # Analyse: Index of coincidence
    println("\nIndex of Coincidence: ")
    println(coincidence(human_input, human_alphabet))

end
