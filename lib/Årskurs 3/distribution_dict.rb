def count(arr)
    puts "Total: " + arr.length.to_s

    categories = {} # Dictonary
    arr.each do |line| # For each line (element) do this...
        category = line.split("#")[1].chomp #=> Frukt
        if categories.key?(category)
            categories[category] += 1
        else
            categories[category] = 1
        end
        # categories #=> {Frukt => 1}
    end
    
    categories.each do |category|
        puts "#{category[0]}: #{((category[1].to_f / arr.length) * 100).to_s}%"
    end
end

count(File.readlines("foods.txt"))