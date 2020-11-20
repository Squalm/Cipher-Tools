include("Utils.jl")
include("FAfunc.jl")

# Scytale Cipher
function scytale(text::String, rails::Integer)

    # Assumes that the text is already clean
    # Since this is a permutation cipher it doesn't need an alphabet

    eachrail = Dict()
    for i = 1:rails
        eachrail[i] = join([
            text[x]
            for x in range(1, length = length(text)) if
            x % rails - i == 0 || x % rails - i == -rails
        ])
    end
    # println(eachrail)

    #==
    for i in range(1, length = rails)
        print(string(i), ": ")
        [print("-") for x in 1:i - 1]
        rail = join([x * join(["-" for u in 1:rails-1]) for x in eachrail[i]])
        println(rail)
    end
    ==#

    return join([eachrail[i] for i = 1:rails])



end # function

println(scytale("WOEEVEAEARRTEEODDNIFCSLEC", 3))
