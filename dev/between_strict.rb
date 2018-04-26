# Public: Uses three numbers as input and decides if the first one is strictly between the second and the third.
#
# input1  - The number which will be compared betweeen the two different numbers.
# input2 - Number 2.
# input3 - Number 3.
#
# Examples
#
#   between_strict(0, -1, 1)
#   # => true
#
#   between_strict(5, 2, 6)
#   # => false
#
# Returns answer.
def between_strict(input1, input2, input3)
    if input1 == ((input2 + input3) / 2)
        return true
    end
    return false
end