require 'pry'

def get_first_name_of_season_winner(data, season)
  season_winner = []
  data[season].each do |contestant|
    if contestant.dig("status") == "Winner"
      season_winner = (contestant.dig("name")).split
    end
  end
  season_winner[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, lady_array| 
    lady_array.each do |contestant|
      name = contestant.fetch("name") if contestant["occupation"] == occupation
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  location_array = []
  data.each do |season, lady_array| 
    lady_array.each do |contestant|
      contestant.collect do |data, value|
        if value == hometown
          location_array << value
        end
      end
    end
  end
  location_array.length
end

def get_occupation(data, hometown)
  occupation = ""
  place_array = []
  data.each do |season, lady_array| 
    lady_array.each do |contestant|
      place_array = contestant.collect do |place| place = contestant["hometown"]
      #binding.pry
        place_array.each.find do |location| 
          break if location == hometown
            occupation = contestant["occupation"]
          
        end
      end
    end
  end
  occupation
  
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |lady_array|
    
      lady_array.each do |contestant|
        count += 1
        
        
        
          age_array = lady_array.collect do |contestant_age| contestant["age"].to_f
        
          
            average = age_array.each do |age|
              ((age += age)/age_array.length).round 
            #binding.pry
          end
        end
      end
    end
  end
end
