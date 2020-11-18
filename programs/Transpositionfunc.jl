include("Utils.jl")

# Rail Fence Cipher
function scytale(text::String, rails::Integer)

    # Assumes that the text is already clean
    # Since this is a permutation cipher it doesn't need an alphabet

    out = []
    eachrail = Dict()
    for i in range(1, length = rails)
        eachrail[i] = join([text[x] for x in range(1, length = length(text)) if x % rails - i == 0 || x % rails - i == -rails])
    end
    println(eachrail)

    for i in range(1, length = rails)
        print(string(i), ": ")
        for x in 1:i - 1
            print("-")
        end
        rail = join([x * join(["-" for u in 1:rails]) for x in eachrail[i]])
        println(rail)
    end

    # for i in range(1, length = length(text) // rails)
    #    for i in range(1, length = rails)


end # function

scytale("abcdefghifklmnopqrstuv", 4)
