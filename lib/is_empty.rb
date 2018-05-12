# Public: Takes an string and decides if it is empty.
#
# string - the string
#
# Examples
#
# is_empty("") #=> true
# is_empty("hej hopp") #=> false
#
#
# Returns answer.
def is_empty(string)
    if string.length == 0
        return true
    end
    return false
end