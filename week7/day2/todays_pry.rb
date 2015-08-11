a = 3
b = 4
c = a * b
if a > 2
  puts "Hey there!"
else
  puts "Boo!"
end
if a < 1
  puts "Howdy"
elsif a > 4
  puts "Heya"
else
  puts "Wassup?"
end
def multiply(num1, num2)
  num1 * num2
end
multiply(2,3)
our_arr = [1,2,3,4,5,6,7]
our_hash = {:hey => 1, :you => 2, :get => 3, :off => 4, :of_my_cloud => 5}
our_string = "Hey, this is a string!"
our_string << " And this is, too!"
our_string
our_second_string = "This string is #{2*3} times more awesome."
our_third_string = "This string is " + 2*3 + " times more awesome"
our_third_string = "This string is " + (2*3).to_s + " times more awesome"
our_arr
our_arr.each do |num|
  puts num
end
our_hash.each do |key, value|
  puts our_hash[:key]
  puts our_hash[:value]
end
our_hash.each do |key, value|
  puts key
  puts value
end
our_hash.each do |key, value|
  puts value
  sleep(2)
end
our_hash.each do |key, value|
  puts key
  sleep(1)
end
puts "Hey #{our_hash[:hey]}"
our_arr
our_arr[2]
our_hash.select{|key, value| key == :hey}
def winners_and_losers(winner, *losers)
  puts winner
  puts losers.length
end
winners_and_losers(["Chris", "Chuck", "Sally", "Todd", "Charles"])
def winners_and_losers(winner, &losers)
  puts winner
  puts losers.length
end
winners_and_losers(["Chris", "Chuck", "Sally", "Todd", "Charles"])
def winners_and_losers(winner, *losers)
  puts winner
  puts losers.length
end
winners_and_losers("Chris", "Chuck", "Sally", "Todd", "Charles")
def winners_and_losers2(*winner, losers)
  puts winner
  puts losers.length
end
winners_and_losers2("Chris", "Chuck", "Sally", "Todd", "Charles")
