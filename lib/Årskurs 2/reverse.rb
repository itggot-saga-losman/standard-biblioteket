def reverse(word)
    i = word.length
    answer = ""
    while i > 0
        i -= 1
        answer = answer + word[i] 
    end
    return answer
end
p "Reverse this word:"
puts reverse(gets.chomp)