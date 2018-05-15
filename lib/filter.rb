# Public: Takes an array and object as input and provides a new array as output, where the new array contains only the object.
#
# string - the string
# divide - the character that will divide the strings
#
# Examples
#
#  filter([8, 2, 0, 2, 5], "2") 
#   #=> [2]
#  filter(["bosse", "olof", "kalle", "olof"], "olof") 
#   #=> ["olof", "olof"]
#
#
# Returns new array with only object remaining.
def filter(array, object)
    i = 0
    output = []

    while i < array.length 
        if array[i] == object
            output << object
        end
        i += 1
    end
    return output 
end