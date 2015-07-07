require 'csv'
class Enumerables
   def self.enumerable_to_test
     CSV.foreach('planet_express_logs.csv', headers: true)
   end

   def self.hard_earth_records
     our_earths = []
     self.enumerable_to_test.each do |row|
       if row["Destination"] == "Earth"
         our_earths << row
       end
     end
     our_earths
   end

   def self.easy_earth_records
     self.enumerable_to_test.select do |row|
       row["Destination"] == "Earth"
     end
   end

   def self.hard_collect_destinations
     our_destinations = []
     self.enumerable_to_test.each do |row|
       our_destinations << row["Destination"]
     end
     our_destinations
   end

   def self.easy_collect_destinations
     self.enumerable_to_test.collect{|row| row["Destination"]}
   end

   def self.hard_sum_earnings
     sum = 0
     self.enumerable_to_test.each do |row|
       sum = sum + row[" Money we made"].to_i
     end
     sum
   end

   def self.easy_sum_earnings
     self.enumerable_to_test.inject(0) do |sum, row|
       sum + row[" Money we made"].to_i
     end
   end

  #  {"Earth" => [row1, row3, row4],
  #  "Moon" => [row2, row5],
  #  }

   def self.group_by_destination
     destinations_hash = {}
     self.enumerable_to_test.each do |row|
       if destinations_hash[row["Destination"]].nil?
         destinations_hash[row["Destination"]] = []
       end
       destinations_hash[row["Destination"]] << row
     end
     destinations_hash
   end

   def self.easy_group_by_destination
     self.enumerable_to_test.group_by{|row| row["Destination"]}
   end

   def self.hard_nonearth_records
     our_nonearths = []
     self.enumerable_to_test.each do |row|
       unless row["Destination"] == "Earth"
         our_nonearths << row
       end
     end
     our_nonearths
   end

   def self.easy_nonearth_records
     self.enumerable_to_test.reject do |row|
       row["Destination"] == "Earth"
     end
   end

   def self.collect_nonsense
     self.enumerable_to_test.collect do |row|
       if row["Destination"] == "Earth"
         "Homebase"
       elsif row["Destination"] == "Mars"
         "Red Planet"
       elsif row["Destination"] == "Moon"
         "Cheeseland"
       else
         "Middle of nowhere"
       end
     end
   end

   def self.say_hi
     "Howdy, ya'll"
   end

   def self.moon_trips
     self.enumerable_to_test.select do |row|
       row["Destination"] == "Moon"
     end
   end

end
