class Dice
  attr_accessor :sides

  def initialize(sides=6)
    @sides = sides
  end

  def roll
    (1..sides).to_a.sample
  end

  def is_loaded?
    false
  end

end
