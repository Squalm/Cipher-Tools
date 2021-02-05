

"""
    importCorpus(path::String)

Returns a string containing the whole file in one line.
"""
function importCorpus(path::String)

    full_text = ""

    @time open(path, "r") do file

        line = 0

        print("\nImporting: <")

        while !eof(file)

            s = readline(file)
            line += 1

            full_text *= s[1:end]

            if line % 10000 == 0
                print("=")
            end # if

        end # while

        print(">\n")

    end # do

    full_text = uppercase(full_text)

    # Split that really long bit of text.
    return [
        full_text[count*1000:(count+1)*1000]
        for count in 1:(round(Int, length(full_text) / 1000 - length(full_text) % 1000)-1)
    ]

    return bits

end # function

importCorpus("AI\\Texts\\download\\download\\LOB_COCOA\\lob.txt")
