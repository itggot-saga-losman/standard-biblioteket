def contains2(word, char)
    i = word.length - 1
    while i != 0
        if word[i] != char
            ans = false
            i -= 1
        end
        ans = true
    end
    return ans 
end

puts contains2(gets.chomp, gets.chomp)


