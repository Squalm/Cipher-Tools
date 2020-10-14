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

    text = removeExtras(uppercase(text), alphabet)

    bestScore = 0
    bestDecrypt = ""
    for i in coprime(length(alphabet))
        for u in 1:length(alphabet)

            aff = affine(text, alphabet, i, u)
            if quadgramScore(aff) > bestScore
                bestDecrypt = aff
                bestScore = quadgramScore(aff)
                println("Got a new best: " , bestScore, ", ", bestDecrypt)
            end

        end
    end # for

    return bestDecrypt

end # function
