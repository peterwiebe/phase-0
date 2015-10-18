#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.
# START 1:03PM Oct 18, 2015
# END 2:34PM Oct 18, 2015

class NameData
  attr_reader :name
  def initialize
    @name = "Peter"
  end
end

class Greetings
  attr_reader :namedata
  def initialize
    @namedata = NameData.new
  end

  def hello
    p "Hello #{namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new

greet.hello # puts "Hello Student! How wonderful to see you today."
# p "Hello #{greet.namedata.name}"

# Reflection
=begin
## Release 1

- What are these methods doing?
    The methods are doing the following:
      - initialize: assigning values to instance variables
      - print_info: printing to the console the variables and their values
      - what_is_age: returning the value of the age variable
      - change_my_age=: updating the age variable to a new age
      - what_is_name: returning the value of the name variable
      - change_my_name=: updating the name variable to a new name
      - what_is_occupation: returning the value of the occupation variable
      - change_my_occupation=: updating the occupation variable to a new occupation

- How are they modifying or returning the value of instance variables?
    They modify the variables by defining a method and setting the instance variable to the attribute that is passed in to the method. They return the value by defining a method that returns the instance variable.

## Release 2

- What changed between the last release and this release?
    None of the ouput changed between releases, both outcomes were exactly the same.

- What was replaced?
    The only difference between Release 1 and Release 2 was that the instance variable @age was assigned as an attr_reader property. This allowed the class to remove the method "what_is_age" and change the call to the method to .age from .what_is_age.

- Is this code simpler than the last?
    Release 2's implementation was more concise.

## Release 3

- What changed between the last release and this release?
    Again the output was exactly the same just some code differences between the prior release.

- What was replaced?
    The code that was replaced this time was the method change_my_age. It was replaced by the attr_writer attribute inserted near the beginning of the class definition.

- Is this code simpler than the last?
    Again the code is more concsie than the last release.

## Release 6

- What is a reader method?
    A reader method is a method which returns the value of an instance variable. For example, say a variable named @var was set to the value to 2, you would write the following code to access it:
        obj_name.var => would return 2

- What is a writer method?
    A writer method is a method which changes the value of an instance variable. For example, say a variable named @var was set to the value to 2, you would write the following code to change it:
        obj_name.var = 4 => the value is now 4

- What do the attr methods do for you?
    attr methods encapsulate the getter and setter methods you would normally have to write in your class to retrieve and update the values of the instance variables in the class.

- Should you always use an accessor to cover your bases? Why or Why not?
    You shouldn't always use an accessor to cover your base because there could be some instances where you don't want the instance variable to change after initialization or you don't want the variable to be returned in case you want to keep parts of the class a black box.

- What is confusing to you about these methods?
    There isn't anything confusing about the methods to me. In an object oriented programming language it all makes perfect sense.
=end