# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.
# START 7:42 Oct 18, 2015
# END 8:33 Oct 18, 2015

# Pseudocode

# Input: An array of strings
# Output:
 # - Method Die.roll returns a random string from the array
 # - Die.new returns a new Die object
# Steps:
=begin
DEFINE a new class called "Die"
  INITIALIZE the "Die" class with an argument named "labels" that takes an array of strings
    IF the "labels" array is empty raise an ArgumentError
    ELSE DEFINE an instance variable called "@labels" and set it to the labels argument that was passed in
    END
  END
  DEFINE a method called "sides"
    RETURN the length of the array "@labels"
  END
  DEFINE a method called "roll"
    RETURN the string value at a random index
  END
END
=end
# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("Please create a die with an array of values") if labels.empty?
#     @labels = labels
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels[rand(self.sides)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    unless !@labels.empty?
      raise ArgumentError.new("Please create a die with an array of values")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

p die.sides

p die.roll

# Reflection
=begin
- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
    The main differences between this die class and the earlier one is that I was able to use array methods to return values for both methods. I did not have to use the rand method to return a value. The logic was essentially the same for the class.

- What does this exercise teach you about making code that is easily changeable or modifiable?
    I am not really sure what was meant by this question since the code I used in both classes were very similar but if the code was a bit more complex I could see how it would be more difficult to switch between different argument types.

- What new methods did you learn when working on this challenge, if any?
    The one new method I learned about was sample, it is much easier than using the rand method and much cleaner too!

- What concepts about classes were you able to solidify in this challenge?
    I was able to solidify my understanding of the unless conditional, my logic was backwards on it. Also, using self to call a method in the class.
=end