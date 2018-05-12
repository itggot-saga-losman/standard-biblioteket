# Public: Takes an array and an element as input and gives a new array with the element added to the start as output.
#
# array - the array
# input - the element which will be added
#
# Examples
#
# prepend([1, 2, 3], 4) #=> [4, 1, 2, 3]
# prepend([10, 10, 10], 11) #=> [11, 10, 10, 10]
#
# Returns both inputs as one array.
def prepend(array, input)
    output= [input]
    output << array
    return output
end