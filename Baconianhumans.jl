using Main.BaconM: bacon, debacon

while true

    # Get info in
    println("\nText [leave blank to break]:")
    human_input = uppercase(readline())
    human_input == "" ? break :
    println("\nConvert to or from binary? [T/F]")
    mode = uppercase(readline())

    if mode == "T"
        println("\nHere it is: ", bacon(human_input).str)
    elseif mode == "F"
        println("What's the length of each chunk?")
        len = readline()
        println("\nHere it is: ", debacon(human_input, parse(Int, len)))
    else
        println("\nNot a recognised mode.")
    end # if

end