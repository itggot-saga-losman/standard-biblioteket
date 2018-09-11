def sum(upto)
    i = upto -1
    ans = upto

    while i != 0
        ans += (upto - i)
        i -= 1
    end

    return ans
end

puts sum(3)





def factorial(from)
    i = from -1
    answer = from

    while i != 0
        answer *= from -i
        
        i -= 1
    end
    
    return answer
end

puts factorial(10)