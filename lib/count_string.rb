# Public: Takes two strings as inputs and gives the number of occurrences of the second string in the first string as output
#
# string - the string that might contain the other string
# contained - the string that might be contained inside the first string
#
# Examples
#
#   count_string("omg omg omg", "omg"))
#   #=> 3
#   count_string("examples are hard\nexamples are hard\nexamples are hard", "examples")
#   #=> 3
#
#
# Returns the amount of instances the second string is found in the first.
def count_string(string, contained)
    i = 0
    instances = 0
    while i < string.length - contained.length + 1
        if string[i, contained.length] == contained
            instances += 1
            i += contained.length - 1
        end
        i += 1
    end
    return instances
end