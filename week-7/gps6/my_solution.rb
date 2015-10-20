# Virus Predictor

# I worked on this challenge [with: Joe Marion].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
##  What does require_relative do?
#  It loads the file named that is relative to the file that contains the require_relative statement

## How does require_relative work?
# It is stating that another file is required to be loaded in conjunction with the current file and that it is located relative to the current file.

## How does it differ from require?
# It differs from require because require is relative to the current directory.


class VirusPredictor

  # Initialization method that takes in 3 arguments, the state_of_origin, population_density, population and setting the instance variables @state, @population, and @population_density to the corresponding arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @dense = [200, 150, 100, 50, 0]
  end

  # virus_effects is a method that calls two methods predicted_deaths and speed_of_spread using the instance variables @population_density, @population, and @state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicted_deaths takes in 3 arguments: population_density, population, and state and checks the density of the population and sets numbers of deaths to the population times a certain percentage.
  def predicted_deaths
    # predicted deaths is solely based on population density
    percent = [0.4, 0.3, 0.2, 0.1, 0.05]
    number_of_deaths = 0
    @dense.each_with_index do |element, index|
      if @population_density >= element
        number_of_deaths = (@population * percent[index]).floor
      end
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # speed_of_spread takes in 2 arguments: population_density and state and sets the speed variable based on the value in in population_density and then outputs a message of in how many months its going to spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.5
    speed_array = [0.5, 1, 1.5, 2, 2.5]
    i = 0

    until @population_density >= @dense[i]
      speed = speed_array[i+1]
      i += 1
    end

    #             if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end


    puts " and will spread across the state in #{speed} months.\n\n"

  end
end


def all_infected_states(states_hash)
  states_hash.each do |key, value|
    state = VirusPredictor.new(key, value[:population_density], value[:population])
    state.virus_effects
  end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


 all_infected_states(STATE_DATA)



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
- What are the differences between the two different hash syntaxes shown in the state_data file?
   The differences are that the outer hashes use a string as a key while the inner hashes use a symbol as a key. The symbols eliminate the need to have the => syntax.

- What does require_relative do? How is it different from require?
    require_relative loads another file or extension that is relative to the current working directory of the file being executed. It is different from require because require doesn't know about the current working directory.

- What are some ways to iterate through a hash?
    Different ways to iterate over hashes include the following methods:
      - each
      - each_with_index
      - map
      - while loop
      - for loop

- When refactoring virus_effects, what stood out to you about the variables, if anything?
    The methods were passing in instance variables, something that is unnecessary inside a class definition when using instance variables in the called method.

- What concept did you most solidify in this challenge?
    Learned about private, require, and iteration instead of using if else chains.

=end