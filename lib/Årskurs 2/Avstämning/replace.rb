def count(sentence, char, rep) 
    i =  0
    copy = ""
    while i < sentence.length
        if sentence[i] == char
            i += 1
            copy << rep[0]
        else
            copy << sentence[i]
            i += 1
        end   
    end
    return copy
end

puts count("hej alla", "a", "e")