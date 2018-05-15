# Public: Takes an array and object as input and provides a new array as output, where the new array doesn't contain the object.
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
# Returns new array without the object.
def filter(array, object)
    i = 0
    output = []

    while i < array.length 
        if array[i] != object
            output << array[i]
        end
        i += 1
    end
    return output 
end