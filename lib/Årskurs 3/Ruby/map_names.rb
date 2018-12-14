def map_names(file)
    
    output = file.map do |element|
        
        split_string = element.split(" ")
        "#{split_string[1]} #{split_string[0]}"
    end
    
    return output.join("\n")

end
file = File.readlines("./names.txt")

File.write('./new_names.txt', map_names(file))
