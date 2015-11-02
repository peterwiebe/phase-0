# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
=begin
DEFINE a method called "is_fibonacci?" that takes one integer as an argument called "num"
  DEFINE a variable called "arr" that is an array initialized with two elements 0 and 1 in the indexes 0 and 1 respectively
  WHILE "num" is greater than the largest value at the end of the "arr" variable loop through the following
    Add the last element of "arr" to the second last element of the "arr" and push that value to the end of the "arr"
  END
  IF "num" is equal to the last element in "arr" then return true otherwise return false
END
=end

# Initial Solution
=begin
def is_fibonacci?(num)
  # First attempt
  # check1 = Math.sqrt(5 * num ** 2 + 4)
  # check2 = Math.sqrt(5 * num ** 2 - 4)

  # if check1 % 1 == 0 || check2 % 1 == 0
  #   true
  # else
  #   false
  # end

  #Second attempt

  arr = [0,1]

  while num > arr.last
    arr.push(arr.last + arr[arr.length - 2])
  end
  num == arr.last ? true : false
end
=end


# Refactored Solution

def is_fibonacci?(num)
  arr = [0,1]

  while num > arr.last
    last = arr.pop
    first = arr.pop

    arr.push(last, last + first)
  end

  num == arr.last ? true : false
end

# Reflection
=begin
- What concepts did you review or learn in this challenge?
    Concepts that I reviewed in this challenge were while loops, manipulating arrays and ternary statements. Something that I learned in this challenge was dealing with large number math in Ruby and overflow problems.

- What is still confusing to you about Ruby?
    There isn't anything that I think I find particularly confusing about Ruby. I think I just need to spend more time on a daily basis so I don't second guess myself.

- What are you going to study to get more prepared for Phase 1?
    I will spend a bit more time on large number math to see how I can counter it when it becomes a problem in the future.
=end