# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Doug Tsui].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: integers or floats
# Output: integers or floats
# Steps to solve the problem.

# User inputs an array with n elements either floats or integers - numbers only allowed in the array

# Create a local variable called total equal to zero

# Create a local variable called array_length that is equal to the number of values in the array

# Create a local variable called index which is equal to zero

# Then enter a while loop and as long as the index is less than array_length do the following

# total = total + array[index] 

# index = index + 1


# Return the total

# 1. total initial solution

# def total(variable)
# 	total_variable = 0
# 	index = 0
# 	while index < variable.length
# 		total_variable = total_variable + variable[index]
# 		index = index + 1
# 	end
# 	return total_variable
# end


# 3. total refactored solution

def total(variable)
	return variable.inject{|sum, x| sum + x}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Strings, integers, floats
# Output:
# Steps to solve the problem.

# User inputs an array with n elements with floats, integers, or strings

# Create a local variable called sentence equal to blank string

# Create a local variable called array_length that is equal to the number of values in the array

# Create a local variable called index which is equal to zero

# Then enter a while loop and as long as the index is less than array_length do the following

# sentence = sentence + space + array[index].to_s 

# index = index + 1

# return sentence.capitalize + "."

# 5. sentence_maker initial solution

# def sentence_maker(variable)
# 	sentence = ""
# 	index = 0
# 	while index < variable.length
# 		sentence = sentence + " " + variable[index].to_s
# 		index = index + 1
# 	end
	
# 	return sentence.lstrip.capitalize + "."
# end

# 6. sentence_maker refactored solution
def sentence_maker(variable)
	return variable.inject{|sentence, x| sentence + " " + x.to_s}.lstrip.capitalize + "."
end
