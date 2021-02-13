module ComparisonM

export iocComparison, faComparison

# IoC Comparison (for humans)
function iocComparison(ioc::Float64)

    countries = Dict{String, Float64}(
        "English" => 1.73,
        "Russian" => 1.76,
        "Spanish" => 1.94,
        "Portugese" => 1.94,
        "Italian" => 1.94,
        "French" => 2.02,
        "German" => 2.05
    )

    # Sort the dict and print the ioc if it fits in somewhere
    println("\nYour IoC (", ioc, ") fits in here: ")
    prev = 0
    for i in sort(collect(countries), by = x -> x[2])
        if i[2] > ioc && prev < ioc
            println("IoC of text => ", ioc)
        end
        prev = i[2]
        println(i)
    end

    return nothing

end # function

# IoC comparison that can just return a comparison dict
function iocComparison()

    countries = Dict{String, Float64}(
        "English" => 1.73,
        "Russian" => 1.76,
        "Spanish" => 1.94,
        "Portugese" => 1.94,
        "Italian" => 1.94,
        "French" => 2.02,
        "German" => 2.05
    )

    return countries

end # function

# FA English Comparison
function faComparison(fa::Dict)

    engfreq = Dict(
        'A' => 0.082,
        'B' => 0.015,
        'C' => 0.028,
        'D' => 0.043,
        'E' => 0.13,
        'F' => 0.022,
        'G' => 0.02,
        'H' => 0.061,
        'I' => 0.07,
        'J' => 0.0015,
        'K' => 0.0077,
        'L' => 0.04,
        'M' => 0.024,
        'N' => 0.067,
        'O' => 0.075,
        'P' => 0.019,
        'Q' => 0.00095,
        'R' => 0.06,
        'S' => 0.063,
        'T' => 0.091,
        'U' => 0.028,
        'V' => 0.0098,
        'W' => 0.024,
        'X' => 0.0015,
        'Y' => 0.02,
        'Z' => 0.00074
    )

    return sum([-abs(i[2] - engfreq[i[1]]) for i in collect(fa)])

end # function

# FA English just FA
function faComparison()

    engfreq = Dict(
        'A' => 0.082,
        'B' => 0.015,
        'C' => 0.028,
        'D' => 0.043,
        'E' => 0.13,
        'F' => 0.022,
        'G' => 0.02,
        'H' => 0.061,
        'I' => 0.07,
        'J' => 0.0015,
        'K' => 0.0077,
        'L' => 0.04,
        'M' => 0.024,
        'N' => 0.067,
        'O' => 0.075,
        'P' => 0.019,
        'Q' => 0.00095,
        'R' => 0.06,
        'S' => 0.063,
        'T' => 0.091,
        'U' => 0.028,
        'V' => 0.0098,
        'W' => 0.024,
        'X' => 0.0015,
        'Y' => 0.02,
        'Z' => 0.00074
    )

    return engfreq

end # function

end # module
