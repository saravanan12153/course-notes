require 'date'

class Person
  attr_accessor   :hair_color,
                  :eye_color,
                  :disposition,
                  :name,
                  :time_of_death

  def initialize(hash)
    @hair_color = hash[:hair_color]
    @eye_color = hash[:eye_color]
    @disposition = hash[:disposition]
    @name = hash[:name]
  end

  def say_hi
    "Howdy!"
  end

  def walk(steps=60)
    "I walked #{steps} steps"
  end

  def say_name
    "Hi, my name is #{name}"
  end

  def die
    self.time_of_death = Time.now
  end

  def deceased?
    # time_of_death = DateTime.parse("July 17, 2015 09:32:45").to_time
    time_of_death < Time.now
  end

  def arise!
    self.time_of_death = nil
  end

  def alive?
    time_of_death.nil? || time_of_death > Time.now
  end

  def self.gather
    10.times.collect do |num|
      Person.new({name: "Person #{num + 1}"})
    end
  end

end
