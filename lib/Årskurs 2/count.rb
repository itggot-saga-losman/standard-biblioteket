# Public: Takes an array and value as input and gives the number of occurrences of the value in the array as output
#
# array - the array
# value - the value which will be decided how many times it occurs in the array
#
# Examples
#
#   count([8, 2, 0, 2, 5, 0, 0, 0], 0) 
#   #=> 4
#   count(["bosse", "olof", "kalle", "olof"], "olof") 
#   #=> 2
#
#
# Returns amount of occurences for the value.
def count(array, value)
    i = 0
    hits = 0
    while i < array.length 
        if array[i] == value
            hits += 1
        end
        i += 1
    end
    return hits
end