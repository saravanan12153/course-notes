# Require the `faker` gem (install via `gem install faker`)

require 'faker'

# Define a Robot class: A robot has a name

class Robot

  attr_accessor :name,
                :height

  def initialize(name, height=10)
    @name = name
    @height = height
  end

  def name
    "Robot King #{@name}"
  end

  # A robot instance should have a method called 'say_hi' and it should return "Hi!"
  def say_hi
    "Hi!"
  end

  # A robot instance should have a method called 'say_name' and it should return "My name is X" where X is the robot's name
  def say_name
    "My name is #{name}"
  end

end

# Define a BendingUnit class
# A BendingUnit inherits from Robot

class BendingUnit < Robot

  # A bending unit instance has a method called 'bend'
  # The bend method has one argument 'object_to_bend'
  # The bend method should put to the console "Bend X!" where X is object_to_bend
  def bend(object_to_bend)
    "Bend #{object_to_bend}!"
  end

end

# Define an ActorUnit class
# An ActorUnit inherits from Robot
class ActorUnit < Robot

  # An ActorUnit instance has a method called 'change_name'
  # The 'change_name' method accepts an argument 'new_name'
  # The 'change_name' method changes the name property of the robot to 'new_name'
  def change_name(change_name)
    self.name = change_name
  end

end

our_class = ["Caleb", "Andrew", "Alec", "Maggie", "Danny", "Dallie", "Emanuel", "Shane", "Pete", "Joe", "Tad"]

# our_class.collect{|name| Robot.new(name)}

class Factory

  ROBOT_TYPES = [Robot, BendingUnit, ActorUnit]

  def self.build_robots(array)
    array.collect{|name| random_robot_class.new(name, Random.new.rand(5..50))}
  end

  def self.random_robot_class
    ROBOT_TYPES.sample
  end

  def self.build_random_robots(num=1000)
    names = []
    num.times do
      names << Faker::Name.first_name
    end
    build_robots(names)
  end

end

# Factory.new.build_robots(array)
# Factory.build_robots(array)

# Hard Mode
#
# Take our student array from yesterday and (programtically) create robots out of all of them and store them in an array.
# Do the previous using an Enumerable method
# Robots should also have a height, with a default value of 10

puts "Our class as robots to follow:\n"
puts Factory.build_robots(our_class)

puts "================ RANDOM ROBOTS ====================\n\n\n"

puts Factory.build_random_robots(25)
