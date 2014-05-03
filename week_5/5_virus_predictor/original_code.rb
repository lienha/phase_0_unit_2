# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: Hing Huynh].

# EXPLANATION OF require_relative
# This file can pull data from state_data


require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables?
                     # We have access to the instance variables as long as we are using the class VirusPredictor.
    predicted_deaths_and_speed_of_spread(@population_density, @population, @state)
  end

  private  # what is this?  what happens if it were cut and pasted above the virus_effects method
           # private makes variables only available to the method
           # It it were cut and pasted above the virus_effects, it became available to the class.
  
  def predicted_deaths_and_speed_of_spread(population_density, population, state)
    
    data = {"population density" => [200,150,100,50,0], 
            "speed of spread"    => [0.5,1,1.5,2,2.5], 
            "multipler"          => [0.4,0.3,0.2,0.1,0.05]}
    i = 0
    number_of_deaths = 0
    until number_of_deaths != 0
      if @population_density >= data["population density"][i]
        number_of_deaths = (@population * data["multipler"][i]).floor
        speed_of_spread = data["speed of spread"][i]
      end
      i += 1
    end
        print "#{@state} will lose #{number_of_deaths} people in this outbreak"
        puts " and will spread across the state in #{speed_of_spread} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects
