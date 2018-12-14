def score(arr)
    scores = {}
    arr.each do |line|
        items = line.split(",")
        name = items[0]
        
        scores[name] = 0
        items[1..items.length].each do |score|
            scores[name] += score.to_i
        end
    end

    total = 0
    largest = scores.keys[0]
    smallest = scores.keys[0]
    
    scores.each do |score|
        puts "#{score[0]}: #{score[1]} poäng"
        total += score[1]

        if score[1] > scores[largest]
            largest = score[0]
            
        end
        if score[1] < scores[smallest]
            smallest = score[0]
        end
    end

    avg = total.to_f / scores.length
    puts "\nGenomsnittlig poäng: #{avg} poäng"
    puts "Högsta resultat: #{largest}, #{scores[largest]} poäng"
    puts "Lägsta resultat: #{smallest}, #{scores[smallest]} poäng"
end

score(File.readlines("scores.csv"))