# Public: Uses three numbers as input and decides which of them is the biggest.
#
# input1 - Number 1.
# input2 - Number 2.
# input3 - Number 3.
# input4 - Number 4.
#
# Examples
#
#   between_strict(2, 3, 5, 4)
#   # => 5
#
#   between_strict(6, 2, 10, 9)
#   # => 10
#
# Returns biggest input.
def max_of_four(input1, input2, input3, input4)
    biggest = input2
    if input1 > input2
        biggest = input1
    end
    if input3 > biggest
        biggest = input3
    end
    if input4 > biggest
        biggest = input4
    end
    return biggest
end

puts max_of_four(2,5,89,3)