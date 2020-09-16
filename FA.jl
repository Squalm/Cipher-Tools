# Get user input - TBDepricated
# println("This is here to be eaten by the console.")
println("Text: ")
text = readline()
print("Proceed with Frequency Analysis? [Press Enter]")
readline()

# Default alphabet - TBDepricated
alphabet = "abcdefghijklmnopqrstuvwxyz"
alphabet_array = split(alphabet, "")

# println(typeof(alphabet))

# This is all the code we need to count all the stuff. Comprehension?
counted = Dict()
# count = []

for i in alphabet_array
    counted[i] = count(i, text) / length(text)
end

# Unsorted out.
# println("Count:")
# println(sort!(collect(counted), by = x->x[1]))

# Sorted out.
println("")
println("Count [Sorted by size]:")
# println(sort!(collect(counted), by = x->x[2], rev = true))

for i in sort!(collect(counted), by = x->x[2], rev = true)
    println(i)
end
