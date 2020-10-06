# Caesar shift function
function caesarshift(text::String, alphabet::String, shift::Int)

    # Turn to numbers
    numbers = [findfirst(isequal(letter), alphabet) for letter in text if occursin(letter, alphabet)]

    # Shift nmubers
    return [alphabet[i + 1] for i in [((x + shift) % length(alphabet)) for x in numbers]]

end # function
