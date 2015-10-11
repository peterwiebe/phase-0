# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.
# Start at 2:56PM on Sun Oct 11
# End at 4:52PM on Sun Oct 11

# 0. Pseudocode

# Input: An integer
# Output: An integer, or an ArgumentError
# Steps:
=begin
  DEFINE a CLASS called "Die"
    INITIALIZE the class with an argument that takes an integer called "sides"
      IF "sides" is < 1 then RAISE the ArgumentError informing the user that "Only integers greater than or equl to 1 are allowed"
      END
      Set the instance variable "@sides" equal to the sides argument passed in.
    END
    DEFINE the method "sides" with no arguments
      RETURN the value of "@sides"
    END
    DEFINE the method "roll" with no arguments
      RETURN a randome number between 1 and the value of "@sides"
    END
  END
=end

# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Only integers greater than or equal to 1 are allowed")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end

die = Die.new(8)
p die.sides
p die.roll

# 3. Refactored Solution

# I honestly don't know how it could be simpler.

# 4. Reflection
=begin
- What is an ArgumentError and why would you use one?
    The ArgumentError is an error that is raised when the arguments passed in to the class or method do not match the requirements of said class or method. This is useful because it gives the programmer feedback as to errors with their program.

- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
    New ruby methods I implemented include raise and rand. They were pretty straight forward in terms of implementation. The random number would have given me problems if I didn't already have an idea of how random numbers are calculated in programming languages.

- What is a Ruby class?
    A ruby class is an object that has methods and values that make up the object. It is a way to represent things programmatically.

- Why would you use a Ruby class?
    You might want to use a class so that you can create multiple instances of that object. Maybe you want to create your own object type which inherits the qualities of other objects but you want to put your own methods inside of it.

- What is the difference between a local variable and an instance variable?
    An instance variable is used inside of a class whereas a local variable is used outside of a class (for the most part). An instance variable defined inside of a method of a class is accessible to other methods defined outside of the method that the instance variable was created in, this would not work for a local variable. Instance variables are only visible to the object that they belong to.

- Where can an instance variable be used?
    I couldn't find any resources as to the limits of instance variables but I would only use them inside of Classes since it depends on an instance of an object. But with that being said, everything is an object so you could use them anywhere.
=end