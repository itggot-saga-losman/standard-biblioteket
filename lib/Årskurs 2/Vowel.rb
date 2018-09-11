def contains(char)
    i = 0
    word = "aoueiyåäö"
    while i != word.length - 1
        if word[i] == char
            return true
        end
        i += 1
    end
    return false
end

puts contains(gets.chomp, gets.chomp)