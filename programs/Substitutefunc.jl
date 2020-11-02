include("Utils.jl")
include("FAfunc.jl")
include("comparisons.jl")

# Susbistution guess - ONLY WORKS WITH ENGLISH
function substituteGuess(text::String)

    engfreq = facomparison()
    textfreq = fa(uppercase(text), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    sortedeng = sort(collect(engfreq), by = x -> x[2])
    sortedtext = sort(collect(textfreq), by = x -> x[2])
    for i in [1:sortedeng]
        
    end

end # function
