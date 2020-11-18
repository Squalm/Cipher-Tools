include("Utils.jl")

# Rail Fence Cipher
function scytale(text::String, rails::Integer)

    # Assumes that the text is already clean
    # Since this is a permutation cipher it doesn't need an alphabet

    out = []
    eachrail = Dict()
    for i in range(1, length = rails)
        eachrail[i] = [text[x] for x in range(1, length = length(text)) if x % rails - i == 0 || x % rails - i == -rails]
    end
    println(eachrail)


    for letter in text

    end

end # function

scytale("abcdef", 2)
