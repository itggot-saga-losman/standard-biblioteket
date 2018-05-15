# Public: Takes an array and a value as input and determines if the array contains the value.
#
# value - the value which might be inside the array
# array - the array
#
# Examples
#
#   contains([8, 2, 0, 2, 5, 0, 0, 0], 0) 
#   #=> true
#   contains(["bosse", "olof", "kalle", "olof"], "gunilla") 
#   #=> false
#
#
# Returns new array without doublettes.
def contains(array, value)
    i = 0
    while i < array.length 
        if array[i] == value
            return true
        end
        i += 1
    end
    return false
end