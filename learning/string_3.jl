# Strings are defined with double quotes
# like variables, strings can contain any unicode character

s1 = "The quick brown fox jumps over the lazy dog α,β,γ"
println(s1)
# NOTE:
# println adds a new line to the end of output.
# print can be used if you dont want that:
print("This ")
print("and ")
print("that.\n")

# chars are defined with single quotes
c1 = 'a'
println(c1)

# The ascii value of a char can be found with Int():
println(c1, " - Ascii value = ", Int(c1))
println("Int of ('α') is: ", Int('α'))
println(Int('1')==1)

# Strings can be converted to upper case or lower case:
s1_caps  = uppercase(s1)
s1_lower = lowercase(s1)
println(s1_caps, "\n", s1_lower)

# Substring can be indexed like array
show(s1[11]); println()
show(s1[11:15]); println()
show(s1[11:end]); println()
show(s1[end-11:end]); println()
show(s1[1:end]); println()

# Julia allows string Interpolation:
a = "Welcome"
b = "To Julia..."
println("$a $b")

# This can be extended to evaluate statements:
println("1 + 2 = $(1 + 2)")

# String can also be concatenated using the * operator
# using * instead of + isn't intutive when you start with Julia,
# however people think it makes more sense.
s2 = "this" * " and" * " that"
println(s2)
# as well as string function
s3 = string("this", " and", " that.")
println(s3)
