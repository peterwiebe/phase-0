# Calculate a Grade

# I worked on this challenge [with: Nicole Yee].


# Your Solution Below

def get_grade (num_grade)
	# if num_grade <= 100 && num_grade >= 90
	# 	return "A"
	# elsif num_grade < 90 && num_grade >= 80
	# 	return "B"
	# elsif num_grade < 80 && num_grade >= 70
	# 	return "C"
	# elsif num_grade < 70 && num_grade >= 60
	# 	return "D"
	# else 
	# 	return "F"
	# end

	# REFACTORED TO:

	if num_grade <= 100 && num_grade >= 90
		return "A"
	elsif num_grade >= 80
		return "B"
	elsif num_grade >= 70
		return "C"
	elsif num_grade >= 60
		return "D"
	else 
		return "F"
	end
end