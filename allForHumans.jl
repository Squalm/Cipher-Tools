# Allow selection of different modules - TO DO INTEGRATE EACH MODEL INTO HERE

include("ImportModules.jl")

help = """

--- CIPHER TOOLS > ALL FOR HUMANS ---

Help - ?
Quit - Q

ANALYSIS
| -> Cipher Identifier - [IN PROGRESS]
| -> Entropy - EN
| -> Frequency Analysis - FA

BRUTE FORCE
| -> Caesar Brute - CA
| -> Affine Brute - AF
| -> Atbash - AB
| -> ROT13 - RO
| -> Rail-fence - [COMING SOON]
| -> Baconian - [COMING SOON]
| -> Polybius Square - [COMING SOON]
| -> Simple Substitution - [COMING SOON]
| -> Transposition - [COMING SOON]

"""

print(help)

while true

    print(">> ")
    text = uppercase(readline())

    if text == "EN"

        println("\n--- CIPHER TOOLS > ENTROPY HUMANS ---")
        include("Entropyhumans.jl")

    elseif text == "FA"

        println("\n--- CIPHER TOOLS > FREQUENCY ANALYSIS HUMANS ---")
        include("FAhumans.jl")

    elseif text == "CA"

        println("\n--- CIPHER TOOLS > CAESAR HUMANS ---")
        include("Caesarhumans.jl")

    elseif text == "AF"

        println("\n--- CIPHER TOOLS > AFFINE HUMANS ---")
        include("Affinehumans.jl")

    elseif text == "AB"

        println("\n--- CIPHER TOOLS > ATBASH HUMANS ---")
        include("Atbashhumans.jl")

    elseif text == "RO"

        println("\n--- CIPHER TOOLS > ROT13 HUMMANS ---")
        include("Rot13humans.jl")

    elseif text == "?"

        print(help)

    elseif text == "R"

        include("Requirements.jl")

    elseif text == "Q"

        break

    else

        println("Not a recognised code. Type '?' for help.")

    end

end
