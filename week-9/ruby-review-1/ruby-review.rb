# Numbers to English Words

# I worked on this challenge [with: Joe Marion].
# This challenge took me [2.5] hours.
# START: Nov 7, 2015 3:15 PM
# END: Nov 7, 2015 5:45 PM


# Pseudocode
=begin
DEFINE a method named in_words that takes an integer
  DEFINE a variable text that is equal to an empty array
  DEFINE a variable integer_number equal to the integer argument passed in
  DEFINE a new empty array called array_number
  DEFINE an integer count equal to 0

  WHILE integer_number is greater than zero
    divide the integer number by 1000 and store the remainder in the index equal to count
    integer_number is equal to integer_number divided by 1000
    increment count by 1
  END

  DEFINE a hash with all the unique numbers set as key/value   pairs
  DEFINE an array that will store the words
  DEFINE a method that breaks up the number passed in the     original argument by tens and evaluates and stores them as words in the empty array. (to the hundreds value)
  JOIN  the array together to form the initial word within     the hundreds

  FOR EACH index in the array_number array
    IF index is equal to 1 and not equal to zero then add the thousand string to the text variable
    ELSE IF index is equal to 2 and not equal to zero then add the million string to the text variable
    ELSE IF index is equal to 3 and not equal to zero then add the billion string to the text variable
  END
      RETURN text variable
END
=end
# Initial Solution


# def in_word(number)
#   text = ""

#   integer_number = number
#   array_number = Array.new
#   count = 0

#   while integer_number > 0
#     array_number[count] = integer_number % 1000
#     integer_number = integer_number / 1000
#     count += 1
#   end

#   def convert_text (number)
#         numbers_name = {
#     1 => "one",
#     2 => "two",
#     3 => "three",
#     4 => "four",
#     5 => "five",
#     6 => "six",
#     7 => "seven",
#     8 => "eight",
#     9 => "nine",
#     10 => "ten",
#     11 => "eleven",
#     12 => "twelve",
#     13 => "thirteen",
#     14 => "fourteen",
#     15 => "fifteen",
#     16 => "sixteen",
#     17 => "seventeen",
#     18 => "eighteen",
#     19 => "nineteen",
#     20 => "twenty",
#     30 => "thirty",
#     40 => "forty",
#     50 => "fifty",
#     60 => "sixty",
#     70 => "seventy",
#     80 => "eighty",
#     90 => "ninety",
#     100 => "hundred",
#     1000 => "thousand",
#     1000000 => "million"
#     }

#       word_array = Array.new

#       if numbers_name.has_key?(number)
#         return numbers_name[number]
#       elsif (21..100).include?(number)
#         word_array << numbers_name[number - (number % 10)]
#         word_array << numbers_name[number % 10]
#       elsif (100..1000).include?(number)
#         word_array << numbers_name[number / 100]
#         word_array << "hundred"
#         if numbers_name.has_key?(number - ((number / 100) * 100) - (number % 10))
#           word_array << numbers_name[number - ((number / 100) * 100)]
#         end
#           word_array << numbers_name[number - ((number / 100) * 100) - (number % 10)]
#         word_array << numbers_name[number % 10]
#       end

#       return word_array.join(" ")
#   end

#   array_number.each_with_index do |three_dig_number, index|

#     if index == 1 && three_dig_number != 0
#       text = " thousand " + text
#     elsif index == 2 && three_dig_number != 0
#       text = " million " + text
#     elsif index == 3 && three_dig_number != 0
#       text = " billion " + text
#     end
#     text = convert_text(three_dig_number) + text
#   end

#   text
# end



# |__|__|__|  |__|__|__|  |__|__|__|
#  1  2  3     1  2  3     1  2  3
# one hundred twenty three million, one hundred twenty three thousand, one hundred twenty three


# Refactored Solution

def in_word(number)
  if number == 0
    return "zero"
  end

  text = ""
  integer_number = number
  array_number = Array.new
  count = 0

  while integer_number > 0
    array_number[count] = integer_number % 1000
    integer_number = integer_number / 1000
    count += 1
  end

  def convert_text (number)
    number_string = ""
    singles = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ]
    teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["", "", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    hundreds_place = (number - (number % 100)) / 100
    tens_place = (number / 10) % 10
    ones_place = number % 10

    if hundreds_place > 0
      number_string += " " + singles[hundreds_place] + " hundred"
    end

    if tens_place > 1
      number_string += " " + tens[tens_place]
    elsif tens_place == 1
      number_string += " " + teens[ones_place]
    end

    if ones_place > 0 && tens_place != 1
      number_string += " " + singles[ones_place]
    end

    number_string
  end

  array_number.each_with_index do |three_dig_number, index|
    large_numbers = ["", "thousand", "million", "billion", "trillion" ]
    if three_dig_number != 0
      text = " " + large_numbers[index] + text
    end
    text = convert_text(three_dig_number) + text
  end

  text
end

puts in_word(1999999999999)

# Reflection
=begin
- What concepts did you review in this challenge?
    Concepts that I reviewed in this challenge included loops, arrays, control flow, working with strings, and math

- What is still confusing to you about Ruby?
    For this challenge there wasn't anything in particular that I fould confusing.

- What are you going to study to get more prepared for Phase 1?
    At this point I am just going to keep working through the different challenges to see what I need to work on.
=end