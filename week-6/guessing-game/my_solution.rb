# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.
# START: 9:58AM Oct 18, 2015
# END:

# Pseudocode
=begin
# Input:
- An integer for the "GuessingGame" class
- An integer for the "guess" method
# Output:
- A symbol :high, :low, or :correct for the "guess" method
- true or false
# Steps:

DEFINE a class called "GuessingGame"
  INITIALIZE the GuessingGame class with an argument that takes an integer called "answer"
    DEFINE an instance variable "@answer" equal to the "answer" argument
    DEFINE an instance variable "@solved" equal to false
  END
  DEFINE an instance method called guess with an argument that takes an integer called "value"
    IF "value" is greater than "answer" RETURN :high
    ELSE IF "value" is lesser than "answer" RETURN :low
    ELSE set "@solved" equal to true and RETURN :correct
  END
  DEFINE an instance method called solved?
    RETURN true if @solved equals to true, false if otherwise
  END
END
=end
# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(value)
#     if value > @answer
#       @solved = false
#       :high
#     elsif value < @answer
#       @solved = false
#       :low
#     else
#       @solved = true
#       :correct
#     end
#   end

#   def solved?
#     return @solved
#   end
# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(value)
    @solved = false
    value > @answer ? :high : value < @answer ? :low : (@solved = true; :correct)
  end

  def solved?
    @solved
  end
end

# Reflection
=begin
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
    Instance variables are the qualities of an object, whereas the methods are the things that an object does. Take a car for example: the manufacturer, the model name, the year it was made are all qualities of each specific car; each car has certain functions: when you press on the gas the car moves forward (as long as it has gas), when you press on the brake the car slows down to a stop, when you turn the ignition the car either turns on or off - something is produced as a result of an action.

- When should you use instance variables? What do they do for you?
    You should use instance variables whenever you want to store some information about the object you want to create, something that can be unique to every instance of the object that is created. Instance variables store the values of each object for the life of the object, they can be created, accessed, or manipulated.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
    An example of flow control: say you wanted to sort an array of people's ages into certain ranges each in its own array. First, you would check the first age with an if statement (a flow control) to see whether it fits into the first range,:
        if first_age < 10
          perform some action

     if it does then add it to the appropriate array, if not then check do the same for the next age range,:
        elsif first_age < 20
          perform some action

     until you find the appropriate range, then check the next age with an if statement and so on.

      I did not have any problems with flow control in this challenge. The only thing I had trouble with was using the ternary structure. I wanted to perform two actions on the final scenario by using the ; but the ternary was always producing the result after the ; instead of returning the earlier result. I solved that problem using parentheses.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?
    This code requied to return symbols so that we could get more familiar with them because symbols are better to use than strings. The benefits of using symbols is that they are faster to use than strings in the ruby language. A symbol is completely unique and immutable. They are similar to integers in that a number can't be any other number, 10 can never be anything else but 10, you can add 1 to 10 but then you would have 11 and that is a new integer. Strings can be manipulated by adding or removing characters from the string, they have more functionality which makes them require more resources when in use than symbols.
=end