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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |key,value|
      value << supply
    end 
  end 


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |key,value|
    value << supply
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash
  end 

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holidays|
		puts "#{season.capitalize}:"
		holidays.each do |holiday,decor|
			puts "  #{holiday.to_s.split('_').map {|word| word.capitalize}.join(' ')}: #{decor.join(", ")}"
		end 
	end 
end

def all_holidays_with_bbq(holiday_hash)
	holiday_hash.collect do |season,holiday|
		holiday.collect do |key,value|
			if value.include?("BBQ")
				key
  			end 
  		end 
<<<<<<< HEAD
  	end.flatten.compact
  end
=======
  	end
  end.flatten.compact
>>>>>>> 1883ac1784bf1f9562e5008933b59f72b52d6b37






