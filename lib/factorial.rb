# Public: Takes a number as input and gives the product of all numbers from 0 to the number as output.
#
# input1 - Number which will be factored up to.
#
# Examples
#
#   factorial_to(3) 
#   # => 6
#
#   factorial(5) 
#   # => 120
#
# Returns the product of all numbers factored up.
def factorial(input1)
    factor = 1
    while 0 < input1
        factor *= input1
        input1 -= 1
    end
    return factor
end    