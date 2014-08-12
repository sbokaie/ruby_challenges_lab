#Bank Transactions

def banking
  currentBalance = 4000
  done = false
	while done == false do
		puts "Your current balance is #{currentBalance}"
		puts "What would you like to do? (deposit, withdraw, check_balance)?"
		activity = gets.chomp

		if activity == "deposit"
			puts "How much would you like to deposit?"
			deposit = gets.chomp.to_i
			currentBalance = currentBalance + deposit
			puts "Your current balance is #{currentBalance}"

		elsif activity == "withdraw"
			puts "How much would you like to withdraw?"
			withdrawal = gets.chomp.to_i
			currentBalance = currentBalance - withdrawal
			puts "Your current balance is #{currentBalance}"

		else
			puts "Your current balance is #{currentBalance}"
		end
		puts "Are you done?"
		response = gets.chomp
		if response == "yes"
			puts "Thank you!"
			done = true
		end
	end 
end


banking()