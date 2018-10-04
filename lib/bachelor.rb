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
  count = 0
  location_array = []
  data.each do |season, lady_array| 
    lady_array.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = ""
  job_array = []
  data.each do |season, lady_array| 
    lady_array.each do |contestant|
      if contestant["hometown"] == hometown
        job_array << contestant["occupation"]
        occupation = job_array.first
      end     
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  average_age = 0
  count = 0
  contestant_age = 0
    data[season].each do |contestant|
    count += 1.0
      contestant_age += contestant["age"].to_f
        average_age = (contestant_age.to_f/count).round
  end
  average_age
end
