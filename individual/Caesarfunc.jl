# Caesar shift function
function caesarshift(text, alphabet, shift)

    numbers = []
    shifted = ""
    for letter in text
        for u in range(1, length = length(alphabet))
            if alphabet[u] == letter
                push!(numbers, u)
                break
            end
        end
    end


    return numbers

end

println(caesarshift(readline(), "abcdefghijklmnopqrstuvwxyz", 2))
