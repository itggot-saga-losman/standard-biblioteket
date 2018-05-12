# Public: Takes a string and a charachter and decides if the string starts with that character.
#
# string - the string
# character - the character which might be in the start of the string
#
# Examples
#
# starts_with("hej hopp", "h") #=> true
# starts_with("Hello World", "k") #=> false
# starts_with("!!zomg!!", "!") #=> true
#
#
# Returns if it is true that the character is in the start.
def starts_with(string, character)
    if string[0] == character
        return true
    end
    return false
end