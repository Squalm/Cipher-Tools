"""
    atbash(text::String, alphabet::String)

This is secretly an affine cipher with `a` and `b` set to the length of the alphabet - 1, so that's how this function treats it.
"""
function atbash(text::String, alphabet::String)

    if Sys.iswindows()
        include("programs\\Affinefunc.jl")
        include("programs\\Utils.jl")
    else
        include("programs/Affinefunc.jl")
        include("programs/Utils.jl")
    end # if
    return affine(
        removeExtras(text, alphabet),
        alphabet,
        length(alphabet) - 1,
        length(alphabet) - 1,
    )

end # function
