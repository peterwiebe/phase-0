# Leap Years

# I worked on this challenge [with: Nicole Yee].


# Your Solution Below
def leap_year?(year)
	# if year%4 == 0
	# 	if year > 99 && year%400 != 0
	# 		return false
	# 	else
	# 		return true
	# 	end
	# else
	# 	return false		
	# end

	# REFACTORED:

	if year%4 != 0 || (year > 99 && year%400 != 0)
		return false
	else
		return true
	end
end