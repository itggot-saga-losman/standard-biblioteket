def collatz(number)
    iterations = 0
    while number != 1
        if number % 2 == 0
            number = number / 2
        else 
            number = 3 * number + 1
        end
        iterations = iterations + 1
    end
    return iterations 
end

print "Skriv ett tal   "
number= gets.to_i

puts collatz(number)

