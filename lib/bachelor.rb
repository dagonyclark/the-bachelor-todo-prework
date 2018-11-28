require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_bach, contestants_array|
    if season_bach.to_s == season
      contestants_array.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ").first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_bach, contestants_array|
    contestants_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_bach, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_bach, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  total_age = 0.0
  data.each do |season_bach, contestants_array|
    if season_bach.to_s == season
      contestants_array.each do |contestant|
        age_array << contestant["age"]
      end
    end
  end
  age_array.each do |age|
    total_age += age.to_f
  end
  return (total_age/(age_array.length)).round

end
