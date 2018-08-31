# Public: Takes a string and a character and decides if the string includes the character.
#
# string - the string
# character - the character
#
# Examples
#
# contains_char("hej hopp", "h") #=> true
# contains_char("Hello World", "%") #=> false
# contains_char("Hello World", "H") #=> true
#
#
# Returns answer
def contains_char(string, character)
    i = 0
    while i < string.length-1
        if string[i] == character
            return true
        end
        i += 1
    end
    return false
end