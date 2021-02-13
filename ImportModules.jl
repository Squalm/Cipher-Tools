# include the modules so that they exist and can be used

if Sys.iswindows()
    include("programs\\Utils.jl")
    include("programs\\comparisons.jl")
    include("programs\\Entropyfunc.jl")
    include("programs\\FAfunc.jl")
    include("programs\\Affinefunc.jl")
    include("programs\\Atbashfunc.jl")
    include("programs\\Caesarfunc.jl")
    include("programs\\Substitutefunc.jl")
    include("programs\\Transpositionfunc.jl")
else
    include("programs/Utils.jl")
    include("programs/comparisons.jl")
    include("programs/Entropyfunc.jl")
    include("programs/FAfunc.jl")
    include("programs/Affinefunc.jl")
    include("programs/Atbashfunc.jl")
    include("programs/Caesarfunc.jl")
    include("programs/Substitutefunc.jl")
    include("programs/Transpositionfunc.jl")
end # if
