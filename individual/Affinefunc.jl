# Affine Substitute
function affine(text::String, alphaDict::Dict{Char, Char})

    out = ""
    for letter in text
        out *= alphaDict[letter]
    end

    return out

end # function

println(affine("abc", Dict('a' => 'c', 'b' => 'a', 'c' => 'b')))
