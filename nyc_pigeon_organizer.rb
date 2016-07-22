require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"] 
  }
}

 # pigeon_list[name]={attribute=>[stat.to_s]}

def nyc_pigeon_organizer(data)
  # NEW PIGEON HASH #
  pigeon_list ={}

  # CREATES NEW TOP LEVEL HASH KEYS #
  data.each do |attribute, stat|
    stat.each do |stat, value|
      value.each do |name|
       pigeon_list[name]={}
      end
    end
  end
  
  # CREATES INTERNAL ATTRIBUTE KEYS #
  pigeon_list.each do |name, empty_hash|
    data.each do |attribute, stat|
      pigeon_merge={attribute=>[]}
      pigeon_list[name].merge!(pigeon_merge)
    end
  end

  # ADDS VALUES TO INTERNAL ATTRIBUTE KEYS #
  data.each do |attribute, stat|
    stat.each do |stat, value|
      value.each do |name|
        pigeon_list[name][attribute]<<stat.to_s
      end
    end
  end

  # RETURNS LIST OF PIGEONS #
  return pigeon_list
end 

