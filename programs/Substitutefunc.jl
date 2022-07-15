module SubstituteM

export substituteGuess, substituteBrute, substitute

using Main.UtilsM: removeExtras
using Main.FAM: fa, bigramScore, bigramFreqs
using Main.ComparisonM: faComparison
using ProgressBars

"""
    substitute(text::String, alphabet::String, newalphabet::String)

Substitues `alphabet` for `newalphabet` in `text`.  

N.B., assumes all characters in text are in alphabet and newalphabet
"""
function substitute(text::String, alphabet::String, newalphabet::String)

    return join([get(newalphabet, findfirst(c, alphabet), "") for c in text])

end # function

"""
    substituteGuess(text::String)

Only works for English text.

Compares the text with usually English frequency analysis and
attempts to guess the key based on that.

N.B. This does not usually actually create recognisable text.
"""
function substituteGuess(text::String)

    text = uppercase(text)
    alphabet = join([t[1] for t in sort(collect(faComparison()), by = x -> x[2], rev = true)])
    newalphabet = join([t[1] for t in sort(collect(fa(text, alphabet)), by = x -> x[2], rev = true)])
    return (text = substitute(text, newalphabet, alphabet), freq = (alphabet, newalphabet))

end # function

"""
    substituteBrute(text, [swaps, alphabet, guess])

Finds the key by generating a guess (if `guess` is true)
and then improving on it by making `swaps` swaps until
the correct solution is reached.  

Works best on long texts.
"""
function substituteBrute(text::String, swaps = 10000, alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ", guess = true)

    text = removeExtras(uppercase(text), alphabet)

    freq = ("", alphabet)

    if guess
        text, freq = substituteGuess(text)
    end # if
    text = [c for c in text]

    # Use bigrams analysis to get a better solution
    # Read the whole file into a dictionary for easy access
    bigrams = bigramFreqs()

    best = (freq[2], bigramScore(join(text), bigrams))

    bar = ProgressBar(1:swaps)
    set_description(bar, best[1])

    for _ in bar

        swap = (rand(1:length(best[1])), rand(1:length(best[1])))
        new_key = [c for c in best[1]]
        new_key[swap[1]], new_key[swap[2]] = new_key[swap[2]], new_key[swap[1]]

        new_key = join(new_key)

        new_score = bigramScore(join(substitute(join(text), freq[2], new_key)), bigrams)

        if new_score > best[2]
            best = (new_key, new_score)
            set_description(bar, best[1])
        end # if

    end # for

    text = substitute(join(text), freq[2], best[1])

    return (text = join(text), old = freq[2], key = best[1])

end # function

end # module
