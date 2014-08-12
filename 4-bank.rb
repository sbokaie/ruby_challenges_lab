def deposit(balance, amount)
	balance += amount
end

def withdraw(balance, amount)
	balance -= amount
end

def check_balance(balance)
	puts "Your current balance is: #{balance}"
end

def start_transaction
	balance = 1000
	done = false
	input = ""
	while done == false do
		
		puts "Your current balance is #{balance}."
		puts "What would you like to do? (deposit, withdraw, check_balance)"
		input = gets.chomp
		
		if input.downcase == "deposit"
			puts "How much would you like to deposit?"
			amount = (gets.chomp).to_i
			balance = deposit(balance, amount)
			check_balance(balance)

		elsif input.downcase == "withdraw"
			puts "How much would you like to withdraw?"
			amount = (gets.chomp).to_i
			balance = withdraw(balance, amount)
			check_balance(balance)

		elsif input.downcase == "check_balance"
			check_balance(balance)
		else
			puts "Not a valid input, please try again."
		end
		
		puts "Are you finished?"
		input = gets.chomp

		if input.downcase == "yes"
			done = true
			puts "Your balance is #{balance}."
			puts "Thanks for stopping by!"
		end

	end
end

start_transaction()