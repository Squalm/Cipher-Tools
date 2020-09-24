# Caesar shift function
function caesarshift(text, alphabet, shift)

    # Turn to numbers
    numbers = []
    shifted = ""
    for letter in text
        num = findfirst(isequal(letter), alphabet)
        push!(numbers, num)
    end

    # Shift nmubers
    numbers = [((x + shift) % length(alphabet)) + 1 for x in numbers]

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

while true

    println("\nText to shift [leave blank to break]: ")
    human_input = readline()
    human_input == "" ? break :
    println("\nAlphabet: ")
    human_alphabet = readline()

    shifts = caesarbrute(human_input, human_alphabet)

    for item in range(1, length = length(shifts))
        println("Shift of ", (item + 1) % length(shifts), ": ", shifts[item])
    end

end
