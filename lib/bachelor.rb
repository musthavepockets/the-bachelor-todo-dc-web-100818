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
  age = 0
  data.each do |season_num, lady_array|
    if season_num == season
      lady_array.each do |contestant|
        #contestant.each do |data, value|
        
        #contestant.map do |value|
          age_array = lady_array.collect do |age| contestant["age"].to_f
        end
          
            average = age_array.each do |age|
              ((age.to_f += age.to_f)/arr.length).to_f.round 
            binding.pry
  #arr.inject{ |sum, el| sum + el }.to_f / arr.size
        
      end
    end
  end
end
