# Public: Takes an array and an element as input and gives a new array with the element added to the end as output.
#
# array - the array
# input - the element which will be added
#
# Examples
#
# append([1, 2, 3], 4) #=> [1, 2, 3, 4]
#
#
# Returns the product of all numbers factored up.
def append(array, input)
    output= array
    output << input
    return output
end