def students_list
	students = []
	done = false

	while done == false
		puts "Want to add another student? (yes, no)"
		response = gets.chomp	
		if response.downcase == "yes"
			puts "What is the student's name?"
			students.push(gets.chomp)
			puts students.inspect
		elsif response.downcase == "no"
			done = true
			students.each_with_index do |student, index|
				puts "The student at index #{index} is #{student}" 
			end
			puts "Cya!"
		else
			puts "Whatever you just put in is not an option..."
		end
	end
end
			
students_list()