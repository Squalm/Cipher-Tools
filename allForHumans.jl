# Allow selection of different modules - TO DO INTEGRATE EACH MODEL INTO HERE

help = """

--- CIPHER TOOLS > ALL FOR HUMANS ---

Help - ?
Quit - Q

ANALYSIS
| -> Cipher Identifier - ##
| -> Entropy - EN
| -> Frequency Analysis - FA

BRUTE FORCE
| -> Caesar Brute - CA
| -> Affine Brute - AF
| -> Atbash - ##
| -> ROT13 - ##

"""

print(help)

while true

    print(">> ")
    text = readline()

    if uppercase(text) == "EN"

        println("\n--- CIPHER TOOLS > ENTROPY HUMANS ---")
        include("Entropyhumans.jl")

    elseif uppercase(text) == "FA"

        println("\n--- CIPHER TOOLS > FREQUENCY ANALYSIS HUMANS ---")
        include("FAhumans.jl")

    elseif uppercase(text) == "CA"

        println("\n--- CIPHER TOOLS > CAESAR HUMANS ---")
        include("Caesarhumans.jl")

    elseif uppercase(text) == "AF"

        println("\n--- CIPHER TOOLS > AFFINE HUMANS ---")
        include("Affinehumans.jl")

    elseif uppercase(text) == "?"

        print(help)

    elseif uppercase(text) == "R"

        include("Requirements.jl")

    elseif uppercase(text) == "Q"

        break

    else

        println("Not a recognised code.")

    end

end
