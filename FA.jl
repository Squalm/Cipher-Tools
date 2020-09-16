# Get user input - TBDepricated
println("Text: ")
text = readline()
print("Proceed with Frequency Analysis? [Press Enter]")
readline()

# Default alphabet - TBDepricated
alphabet = "abcdefghijklmnopqrstuvwxyz"
alphabet_array = split(alphabet, "")

# Count values in text.
counted = Dict()
for i in alphabet_array
    counted[i] = count(i, text) / length(text)
end

# Sorted out.
println("")
println("Count [Sorted by size]:")
for i in sort!(collect(counted), by = x->x[2], rev = true)
    println(i)
end
