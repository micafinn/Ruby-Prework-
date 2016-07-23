array = (1..100)

array.each do |num| 
	result = ""
	if num % 3 == 0 && num % 5 == 0
		result << "Fizzbuzz" 
	elsif  num % 3 == 0
		result << "Fizz"
	elsif num % 5 == 0 
		result << "Buzz" 
	else
		result << "#{num}"
	end

	if num.to_s[0] == "1"  
		result << "Bang"
	end

	puts result 

end