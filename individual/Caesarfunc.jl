# Caesar shift function
function caesarshift(text, alphabet, shift)

    # Turn to numbers
    numbers = []
    shifted = ""
    for letter in text
        num = findfirst(isequal(letter), alphabet)
        num == nothing ? println("Blank found.") : push!(numbers, num)
    end

    # Shift nmubers
    shifted = [alphabet[i] for i in [((x + shift) % length(alphabet)) + 1 for x in numbers]]

    return shifted

end

function caesarbrute(text, alphabet)

    shifts = []
    for i in range(1, length = length(alphabet))
        push!(shifts, caesarshift(text, alphabet, i))
    end

    return shifts

end
