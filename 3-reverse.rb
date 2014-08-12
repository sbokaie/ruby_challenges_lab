# in place solution - this is the ideal answer

def reverse_in_place
puts "Enter your string"
str = gets.chomp.to_s
mid = str.length/2
(0...mid).each do |index|
	str[index], str[-index-1] = str[-index-1], str[index]	
	end
    puts str
end

reverse_in_place()

# use an array - not as fast, but a working solution
def reverse2
	puts "Put in a string please!"
	string = gets.chomp.to_s
	letters = []
	# string to array
	# p string.split("")

	string.split("").each_with_index do |letter|
		# unshift adds a new item to the beginning of an array
		# this method adds the first letter as the 1st item, then the 2nd letter as the 1st item and so on
		
		# Use with debugging
		# puts "LETTERS BEFORE UNSHIFT"
		# puts letters.inspect
		letters.unshift(letter)
		# Use with debugging
		# puts "LETTERS AFTER UNSHIFT"
		# puts letters.inspect
	end
	# puts letters.join
end

# reverse2

# a third solution, using pop instead of unshift...but still not in place
def alt_reverse(string)
	word = ""
	puts "Enter a string"
	string = gets.chomp
  chars = string.each_char.to_a
  # pop removes the last element and returns it
  chars.length.times{word << chars.pop}

  word
end  

# puts alt_reverse("Testing")

# a fourth and fancy solution...but still not in place
def fancy_reverse
	puts "Enter a string"
	name = gets.chomp
	puts name.chars.inject([]){|arr, char| arr.unshift(char)}.join
	 name.chars.inject([]){|arr, char| puts "This is arr #{arr} and this is char #{char}"}
end

# puts reverse()