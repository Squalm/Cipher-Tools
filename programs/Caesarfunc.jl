module CaesarM

export caesarshift, rot13

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

# ROT13 because why not
"""
    rot13(text::String, alphabet::String)

Returns decrypted/encrypted (they're the same process) text as a string.
"""
function rot13(text::String, alphabet::String)
    return caesarshift(text, alphabet, 13)
end # function

end # module
