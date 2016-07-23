for num in (1..100)
	if num % 3 == 0 && num % 5 == 0
		puts "Fizzbuzz" 
	elsif  num % 3 == 0
		puts "Fizz"
	elsif num % 5 == 0 
		puts "Buzz" 
	else
		puts "#{num}"
	end
end