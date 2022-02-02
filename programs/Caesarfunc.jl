module CaesarM

export caesarshift, rot13, caesarbrute

using Main.UtilsM: removeExtras
using Main.ComparisonM: faComparison
using Main.FAM: fa

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

"""
Brute force solves a caesar cipher, required english text.
"""
function caesarbrute(text::String)

    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    text = removeExtras(uppercase(text), alphabet)

    best = ""
    bestscore = -Inf
    for shift in caesarshift.(text, alphabet, 1:length(alphabet))
        score = faComparison(fa(uppercase(shift), alphabet))
        if score > bestscore
            best = shift
            bestscore = score
        end
    end

    return best

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
