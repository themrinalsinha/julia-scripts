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
