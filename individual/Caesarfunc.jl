# Caesar shift function
function caesarshift(text, alphabet, shift)

    # Turn to numbers
    numbers = []
    shifted = ""
    for letter in text
        for u in range(1, length = length(alphabet))
            if alphabet[u] == letter
                push!(numbers, u)
                break
            end
        end
    end

    # Shift nmubers
    numbers = [(x + shift) % length(alphabet) for x in numbers]

    shifted = ""
    for i in numbers
        shifted *= alphabet[i]
    end

    return shifted

end

function caesarbrute(text, alphabet)

    shifts = []
    for i in range(1, length = length(alphabet))
        push!(shifts, caesarshift(text, alphabet, i))
    end

    return shifts

end
