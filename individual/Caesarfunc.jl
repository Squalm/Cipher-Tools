# Caesar shift function
function caesarshift(text, alphabet, shift)

    # Turn to numbers
    numbers = []
    for letter in text
        num = findfirst(isequal(letter), alphabet)
        num == nothing ? println("Letter not in alphabet!") : push!(numbers, num)
    end

    # Shift nmubers
    return [alphabet[i + 1] for i in [((x + shift) % length(alphabet)) for x in numbers]]

end

function caesarbrute(text, alphabet)

    shifts = []
    for i in range(1, length = length(alphabet))
        push!(shifts, caesarshift(text, alphabet, i - 1))
    end

    return shifts

end
