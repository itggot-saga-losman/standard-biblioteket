# Public: Takes three strings as inputs and produces a string as output, where the new string has every occurrence of string2 replaced by string3.
#
# string - the string that might contain the other string
# string2 - the string that will be replaced
# string3 - the string that will replace string2
#
# Examples
#
#   replace_string("omg omg omg", "omg", "foo")
#   #=> "foo foo foo"
#   replace_string("examples are hard", "hard", "tough")
#   #=> "examples are tough"
#
#
# Returns a new string with all of string 2 replaced with string 3.
def replace_string(string, string2, string3)
    i = 0
    output = ""
    while i < string.length
        if string[i, string2.length] == string2
            output << string3 
            i += string2.length
        else
            output << string[i]
            i += 1
        end

    end
    return output
end

puts replace_string("hej hejsan tjena", "hejsan", "tjena")