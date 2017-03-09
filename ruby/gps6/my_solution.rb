# Virus Predictor
# I worked on this challenge with Thomas Feng.

# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#require_relative allows one ruby file to access the class and methods of other local ruby files
#require allows the use built in methods
require_relative 'state_data'
class VirusPredictor
  #initializes class with three parameters/arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #call on predicted_deaths and speed_of_spread instance methods
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end
  private
  #Takes in 3 parameters. Compares @population_density and calculates based on @population(rounds down), prints message to user
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      popfactor = 0.4
    elsif @population_density >= 150
      popfactor = 0.3
    elsif @population_density >= 100
      popfactor = 0.2
    elsif @population_density >= 50
      popfactor = 0.4
    else
      popfactor = 0.05
    end
    (@population * popfactor).floor
    #print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  #Takes in two parameters, sets speed to 0 and increases based off of population_density, prints message to user
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    #puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects
#STATE_DATA.each_key do |state|
  #newstate = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  #newstate.virus_effects
#end
STATE_DATA.each do |state, data|
  newstate = VirusPredictor.new(state, data[:population_density],data[:population])
  newstate.virus_effects
end
#=======================================================================
# Reflection Section

# The differences between the two hash syntaxes shown in the state_data file is that STATE_DATA is storing each key(state) as a string with an = sign.
# Whereas the state hashes themselves are storing population_density and population as symbols with an => sign.
# require_relative searches for a local file to reference and use it's data/functions in other files. Require can still be used for local files, it will look for the root. You can also use things outside of your local files by using require.
# The main way that I iterate through a hash is using the .each do method. It was interesting to learn in this gps how you can use state and data as placeholders, and seeing the value of data was different than I had expected.
# The variables stood out as overused and unneccessary. We didnt need the virus_effects method to take in any of those instance variables as parameters, as the virus_effects method was already calling on them in the code and they were previously defined and usable.
# I think the concept that I solidified the most (but not even close to completely solidified) is the refactoring to DRY code portion. Some of the refactoring I could have swore would not run properly, and yet it was able to. Pretty eye-opening for me.



