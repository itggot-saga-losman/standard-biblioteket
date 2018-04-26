# Public: Uses three numbers as input and decides which of them is the biggest.
#
# input1 - Number 1.
# input2 - Number 2.
# input3 - Number 3.
#
# Examples
#
#   max_of_three(2, 3, 5)
#   # => 5
#
#   max_of_three(6, 2, 10)
#   # => 10
#
# Returns biggest input.
def max_of_three(input1, input2, input3)
    biggest = input2
    if input1 > input2
        biggest = input1
    end
    if input3 > biggest
        biggest = input3
    end
    return biggest
end