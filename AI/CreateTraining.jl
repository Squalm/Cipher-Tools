using JSON
using Random

"""
    importCorpus(path::String)

Returns a string containing the whole file in one line.
"""
function importCorpus(path::String)

    full_text = ""

    open(path, "r") do file

        line = 0

        print("\nReading file: <")

        while !eof(file)

            s = readline(file)
            line += 1

            full_text *= s[1:end]

            if line % 10000 == 0
                print("=")
                break
            end # if

        end # while

        print(">\n")

    end # do

    full_text = uppercase(full_text)

    # Split that really long bit of text.
    return [
        full_text[count*1000:(count+1)*1000]
        for count = 1:(round(Int, length(full_text) / 1000 - length(full_text) % 1000)-1)
    ]

    return bits

end # function

"""
    importTraining(schema::String, text::String)

`schema`: A string containing the path to the schema file\n
`text`: A string containing the path to the text file
"""
function importTraining(schema::String, text::String)

    println("Importing JSON dict from: ", schema)
    training_data = JSON.parsefile(schema)

    println("Importing Corpus from: ", text)
    split_text = importCorpus(text)

    training_data["Supervised"]["decrypts"] = split_text

    #== CREATE THE TRAINING DATA ==#

    # Import ciphers
    println("MAKE SURE THAT ALL CIPHERS ARE LOADED MODULES. [if using Allforhumans, this won't be a problem]")

    ciphers = 4
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    encrypt_format = ("encrypts" => [], "steps" => [], "text_id" => [])

    # Single layer

    for cipher in 1:ciphers

        _encrypts = []
        push!(encrypt_format, training_data["Supervised"]["encrypts"])
        append!(cipher, training_data["Supervised"]["encrypts"][end]["steps"]) # 1 = AtBash, 2 = ROT13 etc.

        for text in 1:length(training_data["Supervised"]["decrypts"])

            if cipher == 1 # AtBash
                if rand(1:6) == 6
                    append!(atbash(training_data["Supervised"]["decrypts"][text], alphabet), _encrypts)
                    append!(text, training_data["Supervised"]["encrypts"][end]["text_id"])
                end # if
            end # if

        end # for

        append!(_encrypts, training_data["Supervised"]["encrypts"][end]["encrypts"])

    end # for

    # Two layers

    # Three layers

    return training_data

end # function

importTraining(
    "AI\\Texts\\smaller_schema.json",
    "AI\\Texts\\download\\download\\LOB_COCOA\\lob.txt",
)
