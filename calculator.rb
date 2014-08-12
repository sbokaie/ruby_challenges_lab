#Calculator 

def calculate
	puts "Math sucks, but lets do it anyway (add, sub, mult, div)"
	method = gets.chomp
	if method != "add" && method != "sub" && method != "mult" && method != "div"
		puts "this ain't math!"
		calculate()
	else
		puts "What is number 1?"
		num1 = gets.chomp.to_f
		puts "What is number 2?"
		num2 = gets.chomp.to_f
		if method == "add"
			sum = num1 + num2
			puts "Result is #{sum}"
		elsif method == "sub"
			diff = num1 - num2
			puts "Result is #{diff}"
		elsif method == "mult"
			prod = num1 * num2
			puts "Result is #{prod}"
		else
			div = num1 / num2
			puts "Result is #{div}"
		end
	end
end

calculate()