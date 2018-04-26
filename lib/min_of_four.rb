# Public: Uses four numbers as input and decides which of them is the smallest.
#
# input1 - Number 1.
# input2 - Number 2.
# input3 - Number 3.
# input4 - Number 4.
#
# Examples
#
#   between_strict(32, 3, 5, 12)
#   # => 3
#
#   between_strict(6, 2, 10, 12)
#   # => 2
#
# Returns smallest input.
def min_of_four(input1, input2, input3, input4)
    smallest = input2
    if input1 < input2
        smallest = input1
    end
    if input3 < smallest
        smallest = input3
    end
    if input4 < smallest
        smallest = input4
    end
    return smallest
end