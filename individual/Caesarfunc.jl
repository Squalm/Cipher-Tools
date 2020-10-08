# Caesar shift function
function caesarshift(text::String, alphabet::String, shift::Int)

    # Turn to numbers
    numbers = [findfirst(isequal(letter), alphabet) for letter in text if occursin(letter, alphabet)]

    # Shift nmubers
    return [alphabet[i + 1] for i in [((x + shift) % length(alphabet)) for x in numbers]]

end # function

function caesarshift(text::String, alphabet::String, shift::Int, returnStr::Bool)
    if returnStr == false
        return caesarshift(text, alphabet, shift)
    else
        outarr = caesarshift(text, alphabet, shift)
        out = ""
        for i in outarr
            out *= i
        end # for
        return out
    end # if
end # function
