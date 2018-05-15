# Public: takes one string and a charachter and gives and array as output where the strings are split at that character.
#
# string - the string
# divide - the character that will divide the strings
#
# Examples
#
#  split_char("1;2;3;4;5", ";") 
#  #=> ["1", "2", "3", "4", "5"]
#  split_char("Hello World", " ") 
#  #=> ["Hello", "World"]
#  split_char("This is a line\nthis is another line\nthis is a line too", "\n") 
#  #=> ["This is a line", "this is another line", "this is a line too"]
#
#
# Returns new array with seperate strings.
def split_char(string, divide)
    i = 0
    output = []
    stringH = ""
    while i < string.length 
        if string[i] == divide || i == string.length - 1
            output << stringH
            stringH = ""
        else
            stringH << string[i]
        end
        
        i += 1
    end
    return output 
end