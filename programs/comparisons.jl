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

end # function

# IoC comparison that can just return a comparison dict
function iocComparison(ioc::Float64, returnIoCs::Bool)

    countries = Dict{String, Float64}(
        "English" => 1.73,
        "Russian" => 1.76,
        "Spanish" => 1.94,
        "Portugese" => 1.94,
        "Italian" => 1.94,
        "French" => 2.02,
        "German" => 2.05
    )

    return returnIoCs ? countries : iocComparison(ioc)

end # function
