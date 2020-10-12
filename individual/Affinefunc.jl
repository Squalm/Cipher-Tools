include("Utils.jl")

# Affine Substitute
function affine(text::String, alphabet::String, nMultiply::Int, nAdd::Int)

    return join([alphabet[(findfirst(isequal(letter), alphabet) * nMultiply + nAdd) % length(alphabet) + 1] for letter in text])

end # function

function affinebrute(text::String, alphabet::String)

    text = removeExtras(text, alphabet)

    for i in alphabet

    end

end # function

println(affine("abc", "abcde", 2, 3))
