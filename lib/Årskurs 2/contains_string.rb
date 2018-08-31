# Public: Takes two strings as input and determines if the first string contains the second string.
#
# string - the string that might contain the other string
# contained - the string that might be contained inside the first string
#
# Examples
#
#   contains_string("foobar", "bar")
#   #=> true
#   contains_string("foobar", "baz")
#   #=> false
#
#
# Returns if the string contains the other string or not.
def contains_string(string, contained) # Min lösning
    i = 0
    j = 0
    while i < string.length 
        if string[i] == contained[j]
            j += 1
            if j == contained.length 
                return true 
            end
        else 
            j = 0
        end
        i += 1
    end
    return false
end


def contains_string(string, contained) # Jacob Lundbergs lösning (Försöker lära mig att göra bättre och enklare lösningar)
    i = 0
    while i < string.length - contained.length + 1
        if string[i, contained.length] == contained
            return true
        end
        i += 1
    end
    return false
end