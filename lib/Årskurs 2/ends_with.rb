# Public: Takes a string and a charachter and decides if the string ends with that character.
#
# string - the string
# character - the character which might be in the end of the string
#
# Examples
#
# ends_with("hej hopp", "p") #=> true
# ends_with("Hello World", "W") #=> false
# ends_with("!!zomg!!", "!") #=> true
#
#
# Returns if it is true that the character is in the end.
def ends_with(string, character)
    if string[-1] == character
        return true
    end
    return false
end