include("individual\\FAfunc.jl")

while true

    println("")
    println("Text [leave blank to break]:")
    human_input = readline()
    human_input == "" ? break :
    println("Alphabet [leave blank for default]:")
    human_alphabet = readline()
    human_alphabet == "" ? human_alphabet = "abcdefghijklmnopqrstuvwxyz" :
    println("")
    fa(human_input, human_alphabet)

end
