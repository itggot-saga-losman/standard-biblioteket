# Public: takes one string and two integers and returns another string that includes all characters between the two integers.
#
# string - the string
# lowest - lowest possible index
# highest - highest possible index
#
# Examples
#
# slice("Hello World", 2, 8) 
#  #=> "llo Wo"
# slice("Foobar", 0, 1) 
#  #=> "F"
#
#
# Returns new string with selected characters replaced.
def slice(string, lowest, highest)
    output =  string[lowest..highest-1]
    return output 
end