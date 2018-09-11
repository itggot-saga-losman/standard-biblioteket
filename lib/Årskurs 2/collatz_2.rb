def collatz_2(number)
    big=1
    while number != 1
        if number % 2 == 0
            number = number/2

        else
            number = number * 3 + 1

        end

        if number > big
            big = number

        end
    end

    return big

end

puts collatz_2 (gets.to_f)