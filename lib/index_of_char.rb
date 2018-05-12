# Public: Takes a string and a character and decides the position of the character.
#
# string - the string
# character - the character
#
# Examples
#
# index_of_char("hej hopp", "h") 
#   #=> 0
# index_of_char("Hello World!", "!") 
#   #=> 11
# index_of_char("Hello World", "!") 
#   #=> nil
#
#
# Returns position of the character
def index_of_char(string, character)
    i = 0
    while i < string.length
        if string[i] == character
            output = i
        end
        i += 1
    end
    return output
end