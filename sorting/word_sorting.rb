sentence_one = "Have a nice day"
sentence_two = "Fools fall for foolish follies."
sentence_three = "Ruby is a fun language!"

def method_name(string)
	return string.gsub(/\p{^Alnum}/, ' ').split().sort_by { |word| word.downcase}
end

puts method_name(sentence_one)
puts method_name(sentence_two)
puts method_name(sentence_three)

