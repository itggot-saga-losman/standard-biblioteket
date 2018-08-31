# Public: Takes a string and a character and decides how many of the character that the string has.
#
# string - the string
# character - the character
#
# Examples
#
# count_char("omg omg omg", "g")
#   #=> 3
# count_char("Bananpaj och grillkorv", "a") 
#   #=> 3
# count_char(".../o(. .  )", ".") 
#   #=> 5
#
#
# Returns how many times the same character is used
def count_char(string, character)
    i = 0
    output = 0
    while i < string.length
        if string[i] == character
            
            output += 1
        end
        i += 1
    end
    return output
end