# Public: Takes two arrays as input and gives a new array with both arrays added together as output.
#
# array1 - array number 1
# array2 - array number 2
#
# Examples
#
# concat([1, 2, 3], [4, 5, 6]) #=> [1, 2, 3, 4, 5, 6]
# concat([10, 10, 10], [11, 11, 11]) #=> [10, 10, 10, 11, 11, 11]
#
#
# Returns the product of all numbers factored up.
def concat(array1, array2)
    output= array1
    output << array2
    return output
end