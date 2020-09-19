# Caesar shift function
function caesarshift(text, alphabet, shift)

    numbers = Array{length(alphabet), Int64}(0, 1)
    shifted = ""
    for i in range(1, length = length(text))
        numbers[i] = findfirst(x -> x == text[i], alphabet)
    end

    return shifted

end

println(caesarshift(readline(), "abcdefghijklmnopqrstuvwxyz", 2))
