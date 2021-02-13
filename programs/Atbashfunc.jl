module AtBashM

export atbash

using Main.AffineM: affine
using Main.UtilsM: removeExtras

"""
    atbash(text::String, alphabet::String)

This is secretly an affine cipher with `a` and `b` set to the length of the alphabet - 1, so that's how this function treats it.
"""
function atbash(text::String, alphabet::String)

    return affine(
        removeExtras(text, alphabet),
        alphabet,
        length(alphabet) - 1,
        length(alphabet) - 1,
    )

end # function

end # module
