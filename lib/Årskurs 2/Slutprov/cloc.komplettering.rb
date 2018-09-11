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

    lines = IO.readlines(file) #Holds the given file.
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
        if is_empty(current)
            empty += 1
        elsif is_commented(current)
            comments += 1
        elsif is_code(current)
            functions += 1
            code += 1
            current = lines[i - 1]  # Current becomes the previous line.
            if is_function_commented(current)   # Checks if the previous line is commented. 
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

# Public: Takes a string and decides if it is empty.
#
# current - a string which might be empty.
#
# Examples
#
#   is_empty("    ")
#   # => true
#
#   is_empty("\n")
#   # => true
#
#   is_empty("this row is not empty")
#   # => false
#
# Returns if the string is empty or not.
def is_empty(current)
    return current == "\n" || current[-2] == " "
end

# Public: Takes a string and decides if it is commented.
#
# current - a string which might be commented.
#
# Examples
#
#   is_commented("#this row is commented")
#   # => true
#
#   is_commented("this row is not commented")
#   # => false
#
# Returns if the string is commented or not.
def is_commented(current)
    return current[0] == "#"
end

# Public: Takes a string and decides if it is a line of code.
#
# current - a string which might be code.
#
# Examples
#
#   is_code("def this row is coded")
#   # => true
#
#   is_code("this row is not coded")
#   # => false
#
# Returns if the string is code.
def is_code(current)
    return current[0, 3] == "def"
end


# Public: Takes a string before a function and decides if the function is commented.
#
# current - a string which might commented.
#
# Examples
#
#   is_code("#there is a function after this line")
#   # => true
#
#   is_code("there is a function after this line")
#   # => false
#
# Returns if the the function is commented.
def is_function_commented(current)
    return current[0] == "#"  
end

lines = ARGV[0] #Holds the given file.

puts cloc(lines)