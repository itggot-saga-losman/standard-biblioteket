# Public: Takes an array as input and provides a new array as output, where the array doesn't contain two of the same objects.
#
# array - the array
#
# Examples
#
#   unique([8, 2, 0, 2, 5]) 
#   #=> [8, 2, 0, 5]
#   unique(["bosse", "olof", "kalle", "olof"]) 
#   #=> ["bosse", "olof", "kalle"]
#
#
# Returns new array without doublettes.
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