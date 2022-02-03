module BaconM

export bacon, debacon

using Main.UtilsM: removeExtras

"""
    bacon(text::String, alphabet::String)
    bacon(text::String)

Substitute a text for a binary representation.
Takes `text` and substitutes binary strings according to `alphabet`.

First letter in alphabet = 0.

Returns a namedtuple `(str, arr)`.
"""
function bacon(text::String, alphabet::String)

    outarr = [join(reverse(digits(
        findfirst(char, alphabet)-1, base=2, pad=trunc(Int, log2(length(alphabet)) + 1 - eps(1.0))
    ))) for char in removeExtras(text, alphabet)]
    
    return (str = join(outarr), arr = outarr)

end # function

function bacon(text::String)
    return bacon(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
end

"""
    debacon(text::String, len::Int, alphabet::String)
    debacon(text::String, len::Int)
    debacon(text::String, alphabet::String)

Inverse of bacon().

Takes a string of 0s and 1s and splits it into "characters" of length `len`
then parses them into a string using `alphabet`.
"""
function debacon(text::String, len::Int, alphabet::String)

    @assert length(text) % len == 0
    return join([alphabet[parse(Int, text[i:i+len-1], base=2) + 1] for i in range(1, length(text), step=len)])

end # function

function debacon(text::String, len::Int)
    return debacon(text, len, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz!£%^&*()-=_+[]{};'#:@~,./<>?")
end # function
function debacon(text::String, alphabet::String)
    return debacon(text, trunc(Int, log2(length(alphabet)) + 1 - eps(1.0)), alphabet)
end # function

end  # module BaconM
