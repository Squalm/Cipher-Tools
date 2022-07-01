#== In theory this is a not too complicated NN to add punctuation into some text ==#

module PunctuateM

export punctuate

using Main.UtilsM: removeExtras

function create_training(texts)

    for file in texts

        text = ""
        open(file) do f
            while !eof(f)
                text *= readline(f)
            end # while            
        end # do

        

    end # for

end # function

function punctuate()
    
end # function

end # module

# Tests
create_training(["Texts/bookbits/mobydick.txt"])