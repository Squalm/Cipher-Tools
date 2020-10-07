function removeextras(text, keepin)

    scraped = ""
    for letter in text
        if occursin(letter, keepin)
            scraped *= letter
        end # if
    end # for

    return scraped

end # function
