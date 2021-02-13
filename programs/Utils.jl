module UtilsM

export removeExtras

function removeExtras(text::String, keepin::String)

    scraped = ""
    for letter in text
        if occursin(letter, keepin)
            scraped *= letter
        end # if
    end # for

    return scraped

end # function

end # module
