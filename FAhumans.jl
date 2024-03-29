using Main.FAM: fa, coincidence
using Main.ComparisonM: iocComparison

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
    counted = fa(uppercase(human_input), uppercase(human_alphabet))
    for i in sort!(collect(counted), by = x->x[2], rev = true)
        println(i)
    end

    # Analyse: Index of coincidence
    println("\nIndex of Coincidence: ")
    println(coincidence(human_input, human_alphabet))

    # Sort IoC
    iocComparison(coincidence(human_input, human_alphabet))

end
