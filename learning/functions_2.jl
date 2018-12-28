function sphere_volume(r)
    return 4/3*pi*r^3
end
println(sphere_volume(5))



# ================================
# functions can also be defined more succinctly
quadratic(a, sqr_term, b) = (-b + sqr_term) / 2a

# calculates x for 0 = a*x^2+b*x+c, arguments types can be defined in function definitions
function quadratic2(a::Float64, b::Float64, c::Float64)
    # Unlike other languages 2a is equivalent to 2*a
    # a^2 is equivalent to a**2 or pow(a, 2)
    sqr_term = sqrt(b^2-4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)
    # multiple values can be returned form a function using tuples
    # If the return keyword is omitted, the last tem is returned.
    r1, r2
end

println(quadratic2(2.0, -2.0, -12.0))
