# Public: Takes a string and gives another string as output, where eventually \n is removed from the end.
#
# string - the string
#
# Examples
#
# chomp("hej hopp\n") #=> "hej hopp"
# chomp("Hello World!") #=> "Hello World!"
# chomp("Foobar\n\n") #=> "Foobar\n"
#
#
# Returns the string without one \n in the end
def chomp(string)
    output=""
    if string[-1] == "\n" 
        output << string[0..-2]
    end
    return output
end