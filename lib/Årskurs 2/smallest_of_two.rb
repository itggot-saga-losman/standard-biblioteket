def smallest_of_two (number1, number2)
    if number1 < number2
        smallest = number1
    else
        smallest = number2
    end
    return smallest
end

grillkorv = smallest_of_two(13,37)

puts grillkorv

