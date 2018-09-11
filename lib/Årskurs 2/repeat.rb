def repeat(word, number)
    words = word
    counter = 1
    while counter != number
        words+= word
        counter += 1
    end
    return words
end

puts repeat("banan", 4)

