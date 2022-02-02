module VignereM

export vignere, vignerebrute

using Main.CaesarM: caesarbrute
using Main.UtilsM: removeExtras
using Main.FAM: bigramScore

"""
Encrypts `text` using a vignere cipher with `key` using `alphabet`
(The order of the alphabet matters!).

The first letter of the alphabet is a shift of 0.
"""
function vignere(text::String, key::String, alphabet::String)

    text = removeExtras(text, alphabet)
    key = removeExtras(key, alphabet)
    return join([
        alphabet[
            (findfirst(text[i], alphabet) + findfirst(key[(i - 1) % length(key) + 1], alphabet) - 2) %
            length(alphabet) + 1]
        for i in 1:length(text)
    ])

end # function

"""
Brute force break a vignere cipher.
Requires English text.
"""
function vignerebrute(text::String, alphabet::String, keylength::Int)

    text = removeExtras(text, alphabet)
    
    bests = fill('a', keylength, trunc(Int, length(text) / keylength))
    lump = ""
    for i in 1:keylength
        lump = join([text[c*keylength + i] 
            for c in 0:trunc(Int, length(text) / keylength)-1 
            if c*keylength + i <= length(text)
        ])
        bests[i, 1:length(lump)] = [l for l in caesarbrute(lump)]
    end # for
    return join([join(c) for c in eachcol(bests)])
end # function

"""
Simple function to run a bunch of vignerebrutes
for when the keylength is unknown
"""
function vignerebrute(text::String, alphabet::String, start::Int, finish::Int)

    outs = vignerebrute.(text, alphabet, start:finish)
    return outs[findmax(bigramScore, outs)[2]]

end # function

end # module

# Tests
#println(vignere("IWALKEDUPONAYELLOWROADWITHMANYBEARSITWASVERYNICEIMJUSTIWRITINGMORERANDOMTEXTPLSHELPMETHISISHARDERTHANITHOUGHTTHOUGHTISOONREALISEDIWASFORETOLDTODIEBYDIVINEPROPHECY", "TIL", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"))
#println(vignerebrute("BELESPWCAHVLRMWEWHKWLWETMPXTVJUMLKATMELLDPKGYBKPBUUNAEBECBBTGOXHZPKIYWWXMMIMXWLPPEXXXBSBATLPLKLPKBSTVTMPZNOSMBSHCRABTLWZGZPTTTLMOBELLNZKMEHTOMWOBMMRLTOQYXXCHXSXKJ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1,5))