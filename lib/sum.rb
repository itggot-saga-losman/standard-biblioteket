# Public: Takes an array made from integers and gives back the sum of them as output.
#
# array - the array
#
# Examples
#
# sum([1, 2, 3, 4, 5]) #=> 15
# sum([1337, 1337, 1337]) #=> 4011
#
# Returns the sum of all integers in the array.
def sum(array)
    i = 0
    output = 0
    while  i < array.length 
        output += array[i]
        i += 1
    end
    return output
end