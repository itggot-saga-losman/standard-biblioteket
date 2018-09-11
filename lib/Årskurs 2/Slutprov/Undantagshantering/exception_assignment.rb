def load_test_result_file(filename)

	begin
		results = File.readlines(filename)
	rescue Errno::ENOENT => e
		puts "The given file does not exist: #{ARGV[0]}"
		puts "Check if the file name is spelled correctly."
		puts "Please try again."
		exit
	rescue TypeError => e 
		puts "You did not specify any file."
		puts "Please try again."
		exit
	end

	i = 0
	while i < results.length
		results[i] = results[i].to_i
		i += 1
	end
	return results
end

def sum_test_results(lines)
	sum = 0
	i = 0
	while i < lines.length
		sum += lines[i]
		i += 1
	end
	return sum
end

def average_test_results(sum, lines)
	begin
		average =  sum / lines.length
	rescue	ZeroDivisionError => e 
		puts "The given file is empty. Cannot divide by zero"
		puts "Please try again."
		exit
	end
end

def display_test_results(filename, avg)
	puts "Average for #{filename}: #{avg.round(2)}"
end


test_result_file = ARGV[0]
test_result_data = load_test_result_file(test_result_file)
test_result_sum  = sum_test_results(test_result_data)
test_result_avg  = average_test_results(test_result_sum, test_result_data)
display_test_results(test_result_file, test_result_avg)