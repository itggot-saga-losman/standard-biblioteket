# Public: Takes a file name as input and counts relevant data from the file, such as: total lines, total lines of code, lines of comments, empty lines, Total number of functions, documented functions and undocumented functions.
#
# file - the file which will be examined.
#
# Examples
#
#   cloc(example_cloc_file)
#   # => Lines of code: 17
#        Lines of comments: 22
#        Empty lines: 5
#        Total lines: 44
#        Total number of functions: 3
#        Documented functions: 2
#        Undocumented funtions: 1
#
# Returns the data about given file.
def cloc(file)

    lines = IO.readlines(file[0]) #Holds the given file.
    i = 0 
    current = ""        # A placeholder for the line which is currently being examined.
    code = 0            # Counts how many lines of code there are.
    comments = 0        # Counts how many lines of comments there are.
    empty = 0           # Counts how many empty lines there are.
    total = 0           # Counts total number of lines.
    functions = 0       # Counts how many functions there are.
    documented = 0      # Counts the documented functions.
    undocumented = 0    # Counts the undocumented functions.
    
    while i < lines.length
        current = lines[i]
        if current == "\n" || current[-2] == " "
            empty += 1
        elsif current[0] == "#"
            comments += 1
        elsif current[0, 3] == "def"
            functions += 1
            code += 1
            current = lines[i - 1]  # Current becomes the previous line.
            if current[0] == "#"    # Checks if the previous line is commented. 
                documented += 1
            end
        else 
            code += 1
        end
        i += 1
        total = i
    end
    undocumented = (functions - documented)
    output = "Lines of code: #{code} \nLines of comments:  #{comments} \nEmpty lines: #{empty} \nTotal lines: #{total} \nTotal number of functions: #{functions} \nDocumented functions: #{documented} \nUndocumented functions: #{undocumented}"
    return output
end

puts cloc(ARGV)