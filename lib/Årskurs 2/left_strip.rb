# Public: Takes a string and a character and gives another string as output where blank space and text breaks are removed from the leftside.
#
# string - the string
#
# Examples
#
# left_strip("   Hello World!  ") 
#  #=> "Hello World!  "
# left_strip("\tFoobar") 
#  #=> "Foobar"
# left_strip("\nTesttest\n") 
#  #=> "Testtest\n"
#
#
# Returns new string without breaks and blanks.
def left_strip(string)

    if string[0] == " " || string[0] == "\n" || string[0] == "\t"
        output = string[1..-1]
    else 
    output = string
    end
    return output
end