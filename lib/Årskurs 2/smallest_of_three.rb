def smallest_of_three(number1,number2,number3)
    if number1 < number2
        nanny = number1
    else 
        nanny = number2
    end

    if nanny < number3
        smallest = nanny
    else 
        smallest = number3
    end
    return smallest
end

ananas = smallest_of_three(3,7,21)
puts ananas