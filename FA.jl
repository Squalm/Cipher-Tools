# Get user input - TBDepricated
print("Text: ")
text = readline()j
print("Proceed with Frequency Analysis? [Press Enter]")
readline()

# Default alphabet - TBDepricated
alphabet = "abcdefghijklmnopqrstuvwxyz"

# This is all the code we need to count all the stuff. Comprehension?
counted_dict =  {}
for i in length(alphabet)
    counted_dict[alphabet[i]] = count(alphabet[i], text)
end

# Unsorted out.
println("Dictionary:")
println(counted_dict)

# Sorted out.
println("Dictionary [Sorted by size]:")
println(sort!(counted_dict, by = x->x[1]))
