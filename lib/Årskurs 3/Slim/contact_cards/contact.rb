require_relative 'lib/slim-template.rb'

lines2 = File.readlines("./data/user_data.csv")

line_array2 = []

lines2.each do |line|
    line_array2 << (line.split(','))
end

p line_array2

variables = {
    :infos => line_array2 
}


html = slim( :index, locals: variables) #:index är namnet på slim-filen
File.write("index.html", html)