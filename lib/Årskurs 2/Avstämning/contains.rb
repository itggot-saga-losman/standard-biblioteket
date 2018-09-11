def contains(sentence, char) 
    i =  0
    while i < sentence.length
        if sentence[i] == char
            return true
        end
        i += 1
    end
    return false
end

puts contains("hej alla", "a")