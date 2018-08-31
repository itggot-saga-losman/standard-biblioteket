# Public: Takes a number as input and gives the sum of all numbers from 0 to the number as output.
#
# input1 - Number which will be added up to.
#
# Examples
#
#   sum_to(3) 
#   # => 6
#
#   sum_to(5) 
#   # => 15
#
# Returns the sum of all numbers added up.
def sum_to(input1)
    sum = 0
    while 0 < input1
        sum += input1
        input1 -= 1
    end
    return sum
end      