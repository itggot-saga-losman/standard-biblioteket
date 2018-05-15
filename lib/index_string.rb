# Public: Takes two strings as inputs and gives the position of the second string in the first string as output.
#
# string - the string that might contain the other string
# contained - the string that might be contained inside the first string
#
# Examples
#
#   index_string("foobar", "bar")
#   #=> 3
#   index_string("foobar", "baz")
#   #=> nil
#
#
# Returns the position of the second string.
def index_string(string, contained) 
    i = 0
    while i < string.length - contained.length + 1 # Sista två är enbart optimering
        if string[i, contained.length] == contained # från i och "length" antal efter i 
            return i
        end
        i += 1
    end
    return nil
end