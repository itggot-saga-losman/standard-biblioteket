# Public: Uses three numbers as input and decides which of them is the smallest.
#
# input1 - Number 1.
# input2 - Number 2.
# input3 - Number 3.
#
# Examples
#
#   between_strict(2, 3, 5)
#   # => 3
#
#   between_strict(6, 2, 10)
#   # => 2
#
# Returns smallest input.
def min_of_three(input1, input2, input3)
    if input1 < input2
        if input1 < input3
            return input1
        else input3 < input1
            return input3
        end

    else input2 < input1
        if input2 < input3
            return input2
        else input3 < input2
            return input3
        end
    end
end