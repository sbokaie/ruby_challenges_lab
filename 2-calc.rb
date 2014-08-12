def add(a,b)
	a+b
end

def sub(a,b)
	a-b
end

def mult(a,b)
	a*b
end

def div(a,b)
	(a.to_f / b.to_f)
end

puts "What calculation would you like to do? (add, sub, mult, div)"
calc = gets.chomp
puts "What is number 1?"
num1 = gets.chomp.to_i
puts "What is number 2?"
num2 = gets.chomp.to_i

if calc == "add"
puts add(num1,num2)	
elsif calc == "sub"
puts sub(num1,num2)
elsif calc == "mult"
puts mult(num1,num2)
elsif calc == "div"
puts div(num1,num2)
else
	puts "Sorry that is not a valid method"
end	
