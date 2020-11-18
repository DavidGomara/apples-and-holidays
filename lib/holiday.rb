require 'pry'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
} 

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |key, value|
  value << "#{supply}"
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, values|
    puts "#{seasons.capitalize}:"
    values.each do |key, data|
      puts "  #{key.to_s.tr("_", " ").split.map(&:capitalize).join(' ')}: #{data.join(", ")}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, values|
    values.each do |holiday, data|
      if data.include?("BBQ")
         new_array << holiday
      end 
    end 
  end 
  new_array
end 







