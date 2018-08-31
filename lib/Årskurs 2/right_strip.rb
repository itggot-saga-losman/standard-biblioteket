# Public: Takes a string and a character and gives another string as output where blank space and text breaks are removed from the right side.
#
# string - the string
#
# Examples
#
# right_strip("   Hello World!  ") 
#  #=> "   Hello World!"
# right_strip("\tFoobar") 
#  #=> "\tFoobar"
# right_strip("\nTesttest\n") 
#  #=> "\nTesttest"
#
#
# Returns new string without breaks and blanks.
def right_strip(string)

    if string[-1] == " " || string[-1] == "\n" || string[-1] == "\t"
        output = string[0..-2]
    else 
    output = string
    end
    return output
end