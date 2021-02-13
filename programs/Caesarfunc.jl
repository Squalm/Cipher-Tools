module CaesarM

export caesarshift

# Caesar shift function
function caesarshift(text::String, alphabet::String, shift::Int)

    # Shift nmubers
    return join([
        alphabet[i+1]
        for i in [
            ((x + shift - 1) % length(alphabet))
            for x in [
                findfirst(isequal(letter), alphabet)
                for letter in text if occursin(letter, alphabet)
            ]
        ]
    ])

end # function

end # module
