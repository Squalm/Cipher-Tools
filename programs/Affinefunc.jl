include("Utils.jl")
include("FAfunc.jl")

# Affine Substitute
function affine(text::String, alphabet::String, nMultiply::Int, nAdd::Int)

    return join([alphabet[(findfirst(isequal(letter), alphabet) * nMultiply + nAdd) % length(alphabet) + 1] for letter in text])

end # function

# Coprime Calculator
function coprime(n::Int)

    return [i for i in 2:n if gcd(i, n) == 1]

end # function

function affinebrute(text::String, alphabet::String)

    text = removeExtras(text, alphabet)

    for i in alphabet

    end # for

end # function
