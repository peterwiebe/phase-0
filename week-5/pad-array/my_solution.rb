# Pad an Array

# I worked on this challenge [with: Steven Broderick]

# I spent [from 6:20pm] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#   an array, integer, and (optionally) a third value of any type

# What is the output? (i.e. What should the code return?)
#   an array

# What are the steps needed to solve the problem?
# DEFINE method "pad" that takes as its arguments an array, a non-negative integer ("min_size"), and an optional argument ("value") with default value of "nil" with which to "pad" the array.
# IF length of array is greater or equal to min_size
#   RETURN array
# ELSE IF length of array is less than min_size
#   ASSIGN variable "index" equal to array length
#   WHILE "index" is less than min_size
#     SET value at array index "index" equal to "value" input
#     index += 1
#   END
# END
# RETURN array

# # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size
#     return array
#   else
#     index = array.length
#     while index < min_size
#       array[index] = value
#       index += 1
#     end
#   end
#   return array
# end

# # my_arr = [1,2,3]
# # p pad!(my_arr, 5)
# # p my_arr

# def pad(arr, min_size, value = nil) #non-destructive
#   array = arr.dup
#   if array.length >= min_size
#     return array
#   else
#     index = array.length
#     while index < min_size
#       array[index] = value
#       index += 1
#     end
#   end
#   return array
# end

# my_arr = [1,2,3]
# p pad!(my_arr, 5, "dest")
# p my_arr


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    padding_needed = min_size - array.length
    padding_needed.times { array.push value }
  end
  array
end

# my_arr = [1,2,3]
# p pad!(my_arr, 5, "dest")
# p my_arr

def pad(arr, min_size, value = nil) #non-destructive
  array = arr.dup
  if array.length < min_size
    padding_needed = min_size - array.length
    padding_needed.times { array.push value }
  end
  array
end

# 4. Reflection

# - Were you successful in breaking the problem down into small steps?
#     Yes, we had a very clear pseudocode outline for each part.

# - Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#     Coding the pseudocode was a breeze because our pseudocode was very clear. The only difficulty we had was a small logic error but it was fixed once we realized the problem when coding. The success was that we didn't spend much time refactoring to get the initial solution to work.

# - Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#     Our initial solution did work to pass the tests. I think it passed because our pseudocode was thorough and clear.

# - When you refactored, did you find any existing methods in Ruby to clean up your code?
#     Yes, we used the times method to complete the padding on the array.

# - How readable is your solution? Did you and your pair choose descriptive variable names?
#     Our solution is fairly readable. We did use descriptive variable names to keep it easy for the reader.

# - What is the difference between destructive and non-destructive methods in your own words?
#     Destructive methods are ones that change the original object(s) that were passed in to the method in some way. Most often, the original object will not be the same once the method completes. A non-destructive method however will not change the object(s) that are passed in. Non-destructive methods will only return copies of the objects that were passed in but with the changes applied to them.