# Virus Predictor

# I worked on this challenge [by myself, with: Brendan Schwarz].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Will load a file from a relative path, starting from wherever the current file is
#
require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population, :population_density


  # Will populate each instance with the values grabbed from STATE_DATA
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs private methods to print useful data
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Returns a number as a function of each instance's population densities and populations, interpolating it as a printable sentence
  def predicted_deaths
    # predicted deaths is solely based on population density

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
    case
    when population_density >= 200
      pop = 0.4
    when population_density >= 150
      pop = 0.3
    when population_density >= 100
      pop = 0.2
    when population_density >= 50
      pop = 0.1
    else
      pop = 0.05
    end
    number_of_deaths = (population * pop).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Returns a given speed based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case
    when population_density >= 200
      speed += 0.5
    when population_density >= 150
      speed += 1
    when population_density >= 100
      speed += 1.5
    when population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  report = VirusPredictor.new(state, data[:population_density], data[:population])
  report.virus_effects
end


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?

    # The differences between the two different hash syntaxes are that one uses String keys with a hash rocket and the other uses Symbols as keys
    # This provides an easier visualization of what the hash represents

# What does require_relative do? How is it different from require?

    # require_relative loads a necessary file from the provided relative path (relative to the file calling it)
    # It is different from require in that require_relative is used for other project files and require would be for libraries and such

# What are some ways to iterate through a hash?

    # You can use Hash#map, Hash#each or even call Fixnum#times on Hash#size if you wanted to

# When refactoring virus_effects, what stood out to you about the variables, if anything?

    # What eventually stood out was the fact that they where passed to other methods that already referenced them directly

# What concept did you most solidify in this challenge?

    # Refactoring methods to be more dry
