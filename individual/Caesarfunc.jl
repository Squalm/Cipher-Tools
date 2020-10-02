# Caesar shift function
function caesarshift(text, alphabet, shift)

    # Turn to numbers
    numbers = [findfirst(isequal(letter), alphabet) for letter in text]

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
