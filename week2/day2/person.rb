require './locomotion'

class Person

  include Locomotion

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
