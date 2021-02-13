module AffineM

export affine, coprime, affinebrute

using Main.UtilsM: removeExtras
using Main.ComparisonM: faComparison
using Main.FAM: fa

# Affine Substitute
function affine(text::String, alphabet::String, nMultiply::Int, nAdd::Int)

    return join([
        alphabet[(findfirst(isequal(letter), alphabet)*nMultiply+nAdd+1)%length(alphabet)+1]
        for letter in text
    ])

end # function

# Coprime Calculator
function coprime(n::Int)

    return [i for i in 2:n if gcd(i, n) == 1]

end # function

# Affine brute scoring mechanism
function affinebrute(text::String, alphabet::String)

    alphabet = uppercase(alphabet)
    text = removeExtras(uppercase(text), alphabet)

    bestScore = -10000
    bestDecrypt = ""
    for i in coprime(length(alphabet))
        for u = 1:length(alphabet)
            aff = affine(text, alphabet, i, u)
            if faComparison(fa(aff, alphabet)) > bestScore
                bestDecrypt = aff
                bestScore = faComparison(fa(aff, alphabet))
            end # if
        end # for
    end # for

    return bestDecrypt

end # function

end # module
