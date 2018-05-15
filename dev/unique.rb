# Public: Takes an array and object as input and provides a new array as output, where the new array doesn't contain the object.
#
# string - the string
# divide - the character that will divide the strings
#
# Examples
#
#   unique([8, 2, 0, 2, 5]) 
#   #=> [8, 2, 0, 5]
#   unique(["bosse", "olof", "kalle", "olof"]) 
#   #=> ["bosse", "olof", "kalle"]
#
#
# Returns new array without the object.
def unique(array)
    i = 0
    output = []
    while i < array.length
        if output.index(array[i]) == nil
            output << array[i]
        end
        i += 1
    end
    return output
end

p unique(["bosse", "olof", "kalle", "olof"]) 