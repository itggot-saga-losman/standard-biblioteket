# Public: Uses two numbers as input and decides which of them is the smallest.
#
# input1  - Number 1.
# input2 - Number 2.
#
# Examples
#
#   between_strict(2, 3)
#   # => 3
#
#   between_strict(6, 2)
#   # => 2
#
# Returns smallest input.
def min_of_two(input1, input2)
    if input1 < input2
        return input1
    end
    return input2
end

puts min_of_two(5, 3)