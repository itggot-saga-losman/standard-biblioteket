def contains(sentence, word) 
    i =  0
    stack = 0
    while i < sentence.length-1
        if sentence[i] == word[stack]
            stack += 1 
            i += 1
            if stack == word.length-1
                return true
            end
        else
            stack = 0
            i += 1
        end 
    end
    return false

end

puts contains("hej alla", "hje alla")