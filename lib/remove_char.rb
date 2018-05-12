# Public: Takes a string and a character and gives another string as output where the character is removed.
#
# string - the string
# character - the character
#
# Examples
#
# remove_char("omg omg omg", "g") 
#  #=> "om om om"
# remove_char("I am a teapot", "a") 
#  #=> "I m  tepot"
#
#
# Returns new string without the character.
def remove_char(string, character)
    i = 0
    output = ""
    while i < string.length
        if string[i] != character
            output << string[i]
        end
        i += 1
    end
    return output
end