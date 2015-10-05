# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

 cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
	end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The name is errors.rb
# 2. What is the line number where the error occurs?
# => The line number where the error is is 17
# 3. What is the type of error message?
# => The type of error is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter has an unexpected end input, it was expecting to see the keyword_end
# 5. Where is the error in the code?
# => The error in the code is after line 16 - the end of the loop
# 6. Why did the interpreter give you this error?
# => The interpreter gave the error because the method has no end keyword, it only ended because the interpret got to the bottom of the program.

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs?
# => The line number where the error is is 36
# 2. What is the type of error message?
# => The type of error is that there is an undefined variable
# 3. What additional information does the interpreter provide about this type of error?
# => That it is in the main object.
# 4. Where is the error in the code?
# => No exact locatino is given other than it gives the name 'south_park'
# 5. Why did the interpreter give you this error?
# => The interpreter gave me the error because it was trying to call south_park but south_park was never initialized

# --- error -------------------------------------------------------

def cartman
	
end

cartman()

# 1. What is the line number where the error occurs?
# => The line number is 51
# 2. What is the type of error message?
# => The type of error is an undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => That it is for the main:Object (NoMethodError)
# 4. Where is the error in the code?
# => In the main
# 5. Why did the interpreter give you this error?
# => Because the method that was called was defined in the code

# errors.rb:51:in `<main>': undefined method `cartman' for main:Object (NoMethodError)

# --- error -------------------------------------------------------

def cartmans_phrase (var)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => The line number is 74
# 2. What is the type of error message?
# => It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
# => It mentions how many arguments were given and how many are needed
# 4. Where is the error in the code?
# => The error in the code is in the main
# 5. Why did the interpreter give you this error?
# => The interpreter gave the error because when the function was called it called it with an argument to which the function doesn't accept any arguments


# errors.rb:70:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("smelly")

# 1. What is the line number where the error occurs?
# => The line number is 93
# 2. What is the type of error message?
# => It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
# => It mentions how many argument were given and how many are needed
# 4. Where is the error in the code?
# => The error is in the main
# 5. Why did the interpreter give you this error?
# => The interpreter gave the error because the function call included no arguments when one is required

# errors.rb:89:in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)
# 	from errors.rb:93:in `<main>'


# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "doh")

# 1. What is the line number where the error occurs?
# => The line number is 121
# 2. What is the type of error message?
# => It is an argument error
# 3. What additional information does the interpreter provide about this type of error?
# => It monetions howo many arguments were given and how many were needed
# 4. Where is the error in the code?
# => In the the main
# 5. Why did the interpreter give you this error?
# => It gave the error because only 1 of 2 arguments were given on the function call

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => The line number is 136
# 2. What is the type of error message?
# => it is a Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => That the string can't be coerced into a Fixnum
# 4. Where is the error in the code?
# => The error is in the main
# 5. Why did the interpreter give you this error?
# => The interpreter gave the error because an mathematical expreession was trying to be carried out on a string

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => The line number is 151
# 2. What is the type of error message?
# => The type of error is a Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => That something was divided by zero
# 4. Where is the error in the code?
# => The error in the code is in the main
# 5. Why did the interpreter give you this error?
# => The interpreter gave the error because a number divided by zero is undefined and cannot be computed

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => The line number is 167
# 2. What is the type of error message?
# => The type of error message is a load error
# 3. What additional information does the interpreter provide about this type of error?
# => That the file cannot be loaded at the location given
# 4. Where is the error in the code?
# => The error in the code is in the main
# 5. Why did the interpreter give you this error?
# => The interpreter gave the error because it couldn't find the file given when calling require_relative


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# - Which error did you find most difficult to read?

# 	The errors most difficult to read were the errors where function calls had the wrong arguments.

# - How did you figure out what the issue with the error was?

# 	The description was self explanatory but there are two line numbers and so it got a bit confusing.

# - Were you able to determine why each error message happened based on the code?

# 	I could immediately identify by looking at the code why each error had appeared.

# - WHen you encounter errors n your future code, what process will you follow to help you debug?

# 	I will first try and determine what type of error it is, then where it could possibly be and refactor.