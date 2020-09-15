# Get user input - TBDepricated
# println("This is here to be eaten by the console.")
println("Text: ")
text = readline()
print("Proceed with Frequency Analysis? [Press Enter]")
readline()

# Default alphabet - TBDepricated
alphabet = "abcdefghijklmnopqrstuvwxyz"
alphabet_array = Array{String}(undef, length(alphabet))
for c in range(1, length = length(alphabet))
    alphabet_array = c
end
# println(typeof(alphabet))

# This is all the code we need to count all the stuff. Comprehension?
counted_dict = ([])

for i in range(1, length = length(alphabet_array))
    counted_dict[alphabet_array[i]] = count(alphabet_array[i], text)
end

# Unsorted out.
println("Dictionary:")
println(counted_dict)

# Sorted out.
println("Dictionary [Sorted by size]:")
println(sort!(collect(counted_dict), by = x->x[1]))
