function coincidence(text, alphabet_array)

    # Find the index of coincidence
    sigma = 0
    for letter in alphabet_array
        sigma += (count(letter, text) * (count(letter, text) - 1))
    end

    # Computer out:
    return sigma / length(text) / (length(text) - 1) / length(alphabet_array)

end

function fa(input, alphabet)

    text = input
    alphabet_array = split(alphabet, "")

    # Count values in text.
    counted = Dict()
    for i in alphabet_array
        counted[i] = count(i, text) / length(text)
    end

    # Human Sorted out.
    println("")
    println("Count [Sorted by size]:")
    for i in sort!(collect(counted), by = x->x[2], rev = true)
        println(i)
    end

    println()
    println("Index of Coincidence: ", coincidence(text, alphabet_array))

    # Computer out:
    return counted

end
