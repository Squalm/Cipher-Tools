include("Utils.jl")
include("FAfunc.jl")
include("comparisons.jl")

# Affine Substitute
function affine(text::String, alphabet::String, nMultiply::Int, nAdd::Int)

    return join([
        alphabet[(findfirst(isequal(letter), alphabet)*nMultiply+nAdd)%length(alphabet)+1]
        for letter in text
    ])

end # function

# Coprime Calculator
function coprime(n::Int)

    return [i for i in 2:n if gcd(i, n) == 1]

end # function

function affinebrute(text::String, alphabet::String)

    alphabet = uppercase(alphabet)
    text = removeExtras(uppercase(text), alphabet)

    bestScore = 0
    bestDecrypt = ""
    for i in coprime(length(alphabet))
        for u = 1:length(alphabet)
            aff = affine(text, alphabet, i, u)
            if faComparison(fa(aff, alphabet)) > bestScore
                bestDecrypt = aff
                bestScore = faComparison(fa(aff, alphabet))
                println("Got a new best: ", bestScore, ", ", bestDecrypt[1:10])
            end

        end
    end # for

    return bestDecrypt

end # function
