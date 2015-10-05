# Factorial

# I worked on this challenge [with: Doug Tsui].


# Your Solution Below
def factorial(number)
	
	if number >= 0
		total_variable = 1
		while number > 0 
			total_variable = number * total_variable
			number = number - 1
		end

		return total_variable

	else print "Please choose a Integer greater or equal to 0"
		
	end
end