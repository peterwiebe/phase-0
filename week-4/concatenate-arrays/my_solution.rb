# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = []
  new_index = 0
  index = 0

  while index < array_1.length
  	new_array[new_index] = array_1[index]
  	index += 1
  	new_index += 1
  end

  index = 0

  while index < array_2.length
  	new_array[new_index] = array_2[index]
  	index += 1
  	new_index += 1
  end
  return new_array
end