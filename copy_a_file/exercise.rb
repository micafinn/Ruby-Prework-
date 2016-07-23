puts "What is the source file?"
source_file = gets.chomp
puts "What is the destination of the file?"
destination_of_file = gets.chomp

file_contents = IO.read(source_file)

IO.write(destination_of_file, file_contents)  
 
 