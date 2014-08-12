def guess_game
	is_correct = false
	guess = 0
	num_tries = 0
	answer = rand(1..100)
	while is_correct == false
		puts "Please guess a number between 1 and 100"
		guess = (gets.chomp).to_i
		num_tries += 1
		
		if guess.class != Fixnum or guess > 100 or guess < 1
			puts "Invalid input.  Try again"
		
		elsif guess > answer
			puts "Nope! Too high."
		
		elsif guess < answer
			puts "Nope! Too low."
		
		else
			puts "Congratulations!  You guessed the right number!"
			puts "You got it in #{num_tries} tries."
			is_correct = true
		
		end
	end
end

guess_game()