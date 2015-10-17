# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number and new instance of CreditCard class
# Output: Either ArgumentError when initializing, and true or false when check_card is called.
# Steps:

# Define the class CreditCard
#   Initialiaze that takes one variable, num.
#     IF the length of num to string is not 16
#       Raise an argument error saying so
#     END
#     Set @num equal to num
#   END

#   DEFINE a new method check_card that takes no arguments and returns true or false.
#     New variable num_array is set to the number that has been turned into an array with each digit as a value.
#     Iterate through the array backwards, starting at second to last value and skipping every other value, double each of these.
#     Combine all numbers into one string (without adding), and then split up numbers once again by individual digits. [6, 12, 16] = > "61216" => [6,1,2,1,6]
#     Add all of these numbers together
#     Return those numbers % 10 == 0 (should return true if works, false otherwise)
#   END
# END

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize num
#     if num.to_s.length != 16
#       raise ArgumentError.new("Credit card number is not 16 digits in length")
#     end
#     @num = num
#   end

#   def check_card
#     num_array = @num.to_s.split("").map! {|digit| digit.to_i }
#     i = 0

#     while i < num_array.length
#       num_array[i] *= 2
#       i += 2
#     end
#     num_array = num_array.join.split("").map! {|digit| digit.to_i }
#     num_array.reduce(:+)%10 == 0
#   end
# end

# card = CreditCard.new(4408041234567901)
# p card.check_card
# card = CreditCard.new(1234567890123456)

# p card.check_card


# Refactored Solution

class CreditCard
  def initialize(num)
    if num.to_s.length != 16
      raise ArgumentError.new("Credit card number is not 16 digits in length")
    end
    @num = num
  end

  # split_to_digits takes a string of a number, splits the number into single digits and returns an array of single digit integers
  def split_to_digits(str)
    str.split("").map! {|digit| digit.to_i }
  end

  def check_card
    num_array = split_to_digits(@num.to_s)

    # iterate over each integer in the array, if the index is an even number multiply the integer at that index by 2. (Destructive)
    num_array.each_with_index do |dig, i|
      i.even? ? num_array[i] = dig*2 : nil
    end

    # sum all individual digits and checks whether the sum is divisible by 10, returns true or false
    split_to_digits(num_array.join).reduce(:+)%10 == 0
  end
end

# card = CreditCard.new(4408041234567901)
# p card.check_card
# card = CreditCard.new(1234567890123456)

# p card.check_card

# Reflection
=begin
- What was the most difficult part of this challenge for you and your pair?
    There wasn't anything too difficult with this challenge for us. We got a little stuck on the some methods not being destructive but fixed them quickly.

- What new methods did you find to help you when you refactored?
    A new method I had not used yet was the reduce method to add all of the integers in an array. We also created our own method to abstract out some repeating code

- What concepts or learnings were you able to solidify in this challenge?
    The one concept that I feel more comfortable about now is the idea of a method being destructive or non-destructive.
=end