module BaconM

"""
    bacon(text::String, alphabet::String, outchars::String)

Substitute a text for a binary representation.
Takes `text` and substitutes binary `outchars` (2 characters) according to `alphabet`.
"""
function bacon(text::String, alphabet::String, outchars::String)



end # function

"""
    bacon(text::String)

Simpler bacon using only english alphabet. Substitutes with `01`.
"""
function bacon(text::String)
    return bacon(text, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "01")
end

end  # module BaconM
