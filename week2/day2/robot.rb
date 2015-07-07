require './locomotion'

class Robot

  include Locomotion

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
