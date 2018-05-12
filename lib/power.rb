# Public: Takes two numbers as input and gives the product of number1 to the power of number2.
#
# input1 - Number which will be multiplied.
# input1 - Number which will decide how many times number1 will be multiplied with itself.
#
# Examples
#
#  power(3, 2) #=> 9
#  power(5, 3) #=> 125
#  power(10, 6) #=> 1000000 
#
#
# Returns the product of all numbers factored up.
def power(input1, input2)
    
    multiply = input1
    while input2 > 1
        input1 = input1 * multiply
        input2 -= 1
    end
    return input1
end    