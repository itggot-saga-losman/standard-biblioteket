def count(sentence, char) 
    i =  0
    times = 0
    while i < sentence.length
        if sentence[i] == char
            times += 1
        end
        i += 1
    end
    return times
end

puts count("hej alla", "a")