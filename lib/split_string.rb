# Public: Takes two strings as input and an array as output where the array contains the strings delimited by the second string.
#
# string - the string that might contain the other string
# limit - the string that will act as a limit between arrays
#
# Examples
#
#   split_string("a bunch of text", " ") 
#   #=> ["a", "bunch", "of", "text"]
#   split_string("This is a line\nthis is another line\nthis is also a line", "\n") 
#   #=> ["This is a line", "this is another line", "this is also a line"]
#
#
# Returns arrays with the strings cut at the limit.
def split_string(string, limit)
    i = 0
    output = []
    stringholder = ""
    while i < string.length - limit.length + 1
        if string[i, limit.length] == limit
            output << stringholder 
            i += limit.length
            stringholder = ""
        else
            stringholder << string[i]
            i += 1
        end
    end
    output << stringholder 
    return output
end