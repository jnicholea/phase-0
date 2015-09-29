# Virus Predictor

# I worked on this challenge with Mike Cerrone.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# links another file to this file. The other file must be in the same directory in current format. Can be the file path. (require_relative is for ruby)
#
require_relative 'state_data'

class VirusPredictor
# creates instance var for state, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density


  end
# calling the private methods from the the class VirusPredictor.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private # restricting the use of the methods by not allowing "public" objects to be passed. only access private methods within the class.

  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end


#=======================================================================
# Reflection Section


# - What are the differences between the two different hash syntaxes shown in the state_data file?
#     - The outer hash was made of a key and the hash rocket symbol. The inner hash used symbols to 
#     represent the relevant data for each state. I can see now how setting up the hash that way 
#     allows for multiple data points to be stored in a single hash without nesting again
# - What does require_relative do? How is it different from require?
#     - I found an answer online that finally helped me understand this better:
#         - When you use require to load a file, you are usually accessing functionality that has 
#         been properly installed, and made accessible, in your system. require does not offer a 
#         good solution for loading files within the project’s code. This may be useful during a 
#         development phase, for accessing test data, or even for accessing files that are "locked"
#          away inside a project, not intended for outside use.
#         - For example, if you have unit test classes in the "test" directory, and data for them 
#         under the test "test/data" directory, then you might use a line like this in a test case:
#         - require_relative "data/customer_data_1"
#         - Since neither "test" nor "test/data" are likely to be in Ruby’s library path (and for 
#           good reason), a normal require won’t find them. require_relative is a good solution 
#         for this particular problem. You may include or omit the extension (.rb or .so) of the 
#           file you are loading.

# - What are some ways to iterate through a hash?
#     - We used .each and looked at the keys and values. Our guide did an excellent job stepping 
#     in and helping us understand how to access the individual symbols within the value of each 
#     key in the hash. Without her help we would have spent a long time puzzling through how to 
#     make that happen.
# - When refactoring virus_effects, what stood out to you about the variables, if anything?
#     - They are very specific and instantly helped me understand the purpose of the code
# - What concept did you most solidify in this challenge?
#     - I now know how to iterate through a nested hash (with multiple values connected to one key).
#     I also have a base-level understanding of how to use private methods, and after I start to 
#     write more complicated code I think I will better understand when to use them.
