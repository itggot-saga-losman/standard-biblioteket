# Public: Takes two strings as inputs and produces a string as output, where the new string does not contain the second string.
#
# string - the string that might contain the other string
# contained - the string that might be contained inside the first string
#
# Examples
#
#   remove_string("omg omg omg", " ")
#   #=> "omgomgomg"
#   remove_string("this is a test", " test")
#   #=> "this is a"
#
#
# Returns a new string which doesn't contain the second string.
def remove_string(string, contained)
    i = 0
    output = ""
    while i < string.length - contained.length + 1
        if string[i, contained.length] == contained
            i += contained.length 
        else
            output << string[i]
            i += 1
        end
    end
    return output
end