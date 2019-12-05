require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num, array|
    if season == season_num
      array.each do |contestant|
        # contestant
        if contestant["status"] == "Winner"
          # binding.pry
          return contestant["name"].split(" ")[0]
        end

      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  counter = 0
  data.each do |season_num, array|
    if season == season_num
      array.each do |contestant|
        total_age += contestant["age"].to_f
        counter += 1
      end
    end
  end
  (total_age / counter).round

end
