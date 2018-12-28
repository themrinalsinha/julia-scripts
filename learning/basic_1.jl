# print hello world.
println("Hello world!")
println("This is my first Julia script")
# --------------------------------------------------

# Calculate volume of sphere.
function sphere_volume(r)
    # Julia allows Unicode names (in UTF-8 encoding)
    return 4/3 * pi * r^3
end

vol = sphere_volume(5)
println("Volume of sphere is : ", vol)
# --------------------------------------------------

# Quadratic function
# Formula: calculates x for 0 = a*x^2+b*x+c, arguments types can be defined in function definitions.
quadratic(a, sqr_term, b) = (-b + sqr_term) / 2a
function quadratic2(a::Float64, b::Float64, c::Float64)
    # Unlike other languages 2a is equivalent to 2*a
    # a^2 is used instead of a**2 or pow(a, 2)
    sqr_term = sqrt(b^2 - 4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)
    # multiple values can be returned from a function using tuples.
    # If the return keyword is omitted, the last term is returned.
    r1, r2
end

# Function can also be defined more succinctly.

quad1, quad2 = quadratic2(2.0, -2.0, -12.0)
print(quad1, quad2, '\n')
