# Public: Takes an array made from integers and gives back the avarage of them as output.
#
# array - the array
#
# Examples
#
# average([1, 2, 3, 4, 5]) #=> 3.0
# average([1337, 1337, 1337]) #=> 1337.0
#
# Returns the sum of all integers in the array.
def average(array)
    i = 0
    output = 0
    while  i < array.length 
        output += array[i]
        i += 1
    end
    output = (output/(array.length))
    return output
end