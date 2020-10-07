function removeextras(text::String, keepin::String)

    scraped = ""
    for letter in text
        if occursin(letter, keepin)
            scraped *= letter
        end # if
    end # for

    return scraped

end # function

function removeextras(text::String, keepin::String, returnarray::Bool)

    if returnarray == false
        removeextras(text, alphabet)
    else
        return [letter for letter in text if occursin(letter, keepin)]
    end # if

end # function
