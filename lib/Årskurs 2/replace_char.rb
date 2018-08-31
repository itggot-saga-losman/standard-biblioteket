# Public: takes one string and two characters and replaces all of the first character with the second character.
#
# string - the string
# remove - the character that will be removed
# add - the character that will be added 
#
# Examples
#
# replace_char("Hello World!", "H", "F")
#  #=> "Fello World!"
# replace_char("Foobar", "F", "B")
#  #=> "Boobar"
#
#
# Returns new string with selected characters replaced.
def replace_char(string, remove, add)
    i = 0
    while i < string.length
        if string[i] == remove
            string[i] = add
        end
        i += 1
    end
    return string
end