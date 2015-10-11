

# Start time 8:00 PM Sat Oct 10
# End time 2:47 PM Sun Oct 11

# input = an array of strings
# output = an an array of arrays with the sub array having a maximum of 5 and a minimum of 3


copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

# copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill"]

# 1. PSEUDOCODE
=begin
DEFINE a method called "groups" that takes an array of strings as an argument called "names"
  Randomize the "names" array
  Determine the remainder of the number items in the "names" array when dividing by the maximum number of names (5)
  DEFINE a new array called "teams"
  DEFINE a new variable with an initial value of 0 called "index"
  WHILE "index" is less than the number of number of names in the "names" array do the following
    ADD the first five or fewer names in the "names" array to the a new array inside of the "teams" array
  RETURN "teams"
=end

# 2. INITIAL SOLUTION

# def groups (names)
#   people = names.shuffle
#   index = 0
#   individual = 0
#   teams = []
#   while index < people.length
#     subarray = []
#     while individual < 5 && index < people.length
#       subarray.push(people[index])
#       individual += 1
#       index += 1
#     end
#     teams.push(subarray.dup)
#     individual = 0
#   end
#   teams
# end

# 3. REFACTORED SOLUTION

def groups (names)
  groups = []
  names.shuffle.each_slice(5) {|a| groups.push(a)}
  while groups.any? {|group| group.length < 3} && groups.length > 1
    groups = groups.sort_by{|group| group.length}.reverse
    groups[groups.find_index {|i| i.length < 3}].push(groups[groups.find_index {|i| i.length > 3}].pop)
  end
  groups
end

p groups (copperheads)

# 4. REFLECTION
=begin
- What was the most interesting and most difficult part of this challenge?
    The most interesting part of this challenge was the most difficult part and that was trying to set a minimum group size for the groups for all groups. I wanted to set a min and a max for the each_slice method.

- Do you feel you are improving in your ability to write pseudocode and break the problem down?
    I am, but at times I just want to start getting into it because it is complex and writing the pseudocode takes time.

- Was your approach for automating this task a good solution? What could have made it even better?
    I think it is a decent solution, probably not the best solution. I was trying to keep it short and sweet. It could have been better if I put in a test to see if there were any teams that had more than 4 members and teams that had less than 4 members to balance the teams a bit.

- What data structure did you decide to store the accountability groups in and why?
    I decided to store the groups in an array to do something different than the prior challenge that I used a hash for.

- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
    I learned how complex it can be to work with multidimensional arrays. I learned a new method in each_slice, the rest were more or less familiar.
=end