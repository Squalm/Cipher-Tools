# Caesar shift function
function caesarshift(text, alphabet, shift)

    # Turn to numbers
    numbers = [findfirst(isequal(letter), alphabet) for letter in text if occursin(letter, alphabet)]

    # Shift nmubers
    return [alphabet[i + 1] for i in [((x + shift) % length(alphabet)) for x in numbers]]

end

# Caesar brute function
function caesarbrute(text, alphabet)

    return [caesarshift(text, alphabet, i - 1) for i in range(1, length = length(alphabet))]

end
