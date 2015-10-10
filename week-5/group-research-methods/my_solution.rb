# Research Methods

# I spent [0.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4 : PETER WIEBE
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |index| (index.is_a? (String)) && (index.include? thing_to_delete) }

  # source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k, v| k == thing_to_delete }

  # source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

#====Methods====
# delete_if : iterates through the array / hash and deletes the element in the array / hash if the following conditional evaluates to true, it returns a new array / hash. The item between the pipes is the temporary variable created for each element in the array / hash which you can evaluate or change
# include? : checks to see whether a string includes another substring, it returns true or false. This method is specific to string objects.
# is_a? (String) : checks the object to determine if it is a string or not, it returns true or false. This is necessary because not all of the values in the array are of a string type, the include? method will show an error when anything other than a string is passed into the method include?. Therefore, is_a (String) returns true for strings or returns false and carries on to the next index

#====Ruby Docs====
# One thing that you need to keep in mind is what the methods return. This is shown by the --> in the description of the function. The right side shows what is returned, in some versions of the docs, the result is abbreviated - ary == array.



# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#