# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.
# I started at 10:50 AM Sat Oct 10
# I finished at 3:35 PM Sat Oct 10 (one line refactor took up time after 1 hour)

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A comma separated string
# What are the steps needed to solve the problem?
# DEFINE a METHOD named separate_comma that takes one argument, a positive integer called "number".
#   IF the integer is less than 1,000 then RETURN the integer converted to a string
#   ELSE
#     DEFINE a new VARIABLE as an empty STRING called "text"
#     WHILE "number" is greater than 1,000
#       ADD a comma plus the first three digits to the beginning VARIABLE "text"
#       "number" is equal to "number" divided by 1,000 with no remainder
#     END
#   END
#   RETURN "text"
# END


# 1. Initial Solution
# def separate_comma (number)
#   text = String.new
#   while number >= 1000
#     text = "," + sprintf('%03d', (number%1000).to_s) + text
#     number = number / 1000
#   end
#   text = number.to_s + text
#   return text
# end

# 2. Refactored Solution
def separate_comma (number)

number
.to_s
.reverse
.split("")
.map.with_index {|x, i|  ((i+1)%3 == 0 && number.to_s.length - (i+1) > 0 ? x << ","  : x)}
.join
.reverse

end

# 3. Reflection
=begin
- What was your process for breaking the problem down? What different approaches did you consider?
    My process was use the modulus to find each 3 digits of the number and prepend the "," before them as long as there were more than 3 digits left.

- Was your pseudocode effective in helping you build a successful initial solution?
    My pseudocode had a slight error to it since a modulus of a number less than 100 would return a number that wasn't 3 digits but it definitely put me on the right track.

- What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
    The ruby methods I used to refactor were: to_s, reverse, split, map, with_index, and join.
    The difficulties I had were that I wasn't quite sure of how the syntax works inside the {}. I had a heck of a time trying to figure out how to put a conditional statement in there that didn't give me errors. I learned a fair bit.
    These methods did change the way my method works because I chained all of the built in methods together, therfore the return object of the prior had to match the argument requirement of the following method. Also, because I was trying to keep things to one line I couldn't call other variables so everything had to flow from beginning to end. It was a challenge to get the solution but only because of my lack of knowledge about the syntax.

- How did you initially iterate through the data structure?
    I initially iterated through the data with a while loop.

- Do you feel your refactored solution is more readable than your initial solution? Why?
    If I put it on one line it isn't necessarily easy to read but I can return the chained methods on new lines to make it simple to read and it won't break.
=end