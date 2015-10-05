puts "What is your first name?"

first_name = gets.chomp

puts "What is your middle name?"

middle_name = gets.chomp

puts "What is your last name?"

last_name = gets.chomp

puts "Well it is certainly a pleasure to meet your acquaintance " + first_name + " " + middle_name + " " + last_name + "!"

puts
puts

puts "What is your favourite number?"

number = gets.chomp

puts "That may be your favourite number but " + (number.to_i + 1).to_s + " is an even bigger and better number!"



# - How do you define a local variable?

# 	A local variable is a variable that is only accessible in the method or loop that it is created in. Outside of the block that it is contained in it cannot be accessed.

# - How do you define a method?

# 	A method is a block of code that runs a specific set of code performing a specific function. It can be called several times within the same program to save writing out code multiple times.

# - What is the difference between a local variable and a method?

# 	The difference between the two is that a method can more or less be called anywhere (even inside of itself!) but local variables can only be called in the environment in which it was created and in the sub environments below it. Anything in a higher "scope" will not be able to access that variable and therefore not be able to call it.

# - How do you run a ruby program from the command line?

# 	To run a ruby program from the command line you type:
# 		ruby program_name_here.rb

# = How do you run a RSpec file from the command line?

# 	To run a RSpec file from the command line you type:
# 		rspec spec_file_name_here.spec

# - What was confusing about this material? What made sense?

# 	Nothing was confusing about the material so far. Having experience in prgoramming made all of the work so far very easy. Everything made sense.