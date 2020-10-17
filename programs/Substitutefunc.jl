include("Utils.jl")
include("FAfunc.jl")

# Susbistution guess - ONLY WORKS WITH ENGLISH
function substituteGuess(text::String)

    tosubst = Dict()
    subst = fa(text, "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    for i in sort(collect(subst), by = x -> x[2])
        engfreq = faComparison()
    end


end # function
