# Public: Takes a string and a character and gives another string as output where blank space and text breaks are removed.
#
# string - the string
#
# Examples
#
# strip("   Hello World!  ")
#  #=> "Hello World!"
# strip("\tFoobar")
#  #=> "Foobar"
# strip("\nTesttest\n")
#  #=> "Testtest"
#
#
# Returns new string without breaks and blanks.
def strip(string)
    until string[0] != " " && string[0] != "\t" && string[0] != "\n"
        string[0] = ""
    end
    until string[-1] != " " && string[-1] != "\t" && string[-1] != "\n"
        string[-1] = ""
    end
    return string 
end