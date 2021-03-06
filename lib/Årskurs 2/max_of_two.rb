# Public: Uses two numbers as input and decides which of them is the biggest.
#
# input1 - Number 1.
# input2 - Number 2.
#
# Examples
#
#   max_of_two(2, 3)
#   # => 3
#
#   max_of_two(6, 2)
#   # => 2
#
# Returns biggest input.
def max_of_two(input1, input2)
    if input1 < input2
        return input2
    end
    return input1
end