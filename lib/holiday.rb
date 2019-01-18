require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |seasons, holiday_details_hash| 
holiday_details_hash.each do |attribute, data|
  if attribute == :christmas || attribute == :new_years
    data << "Balloons"
  end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash.each do |seasons, holiday_details_hash| 
holiday_details_hash.each do |attribute, data|
if attribute == :memorial_day
  data << supply 
  
  end
end
end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_details_hash|
  holiday_details_hash.each do |attribute, data|
    puts "#{season.capitalize}:"
    holiday = attribute.split("_").map {|x| x.capitalize}.join(" ")
    puts "  #{attribute.split("_").map(&:capitalize).join(" ")}: #{data.join(", ")}"
    
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







