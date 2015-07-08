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

class LoadedDice < Dice

  def roll
    original = (1..sides).to_a
    loaded = original + original.each_slice(sides/2.to_i).to_a[1]
    loaded.sample
  end

  def is_it_really_loaded?
    true
  end
end

class SimpleCraps



end

# Deck
# Card
# Player
# Game
#
# Game.play
#
# Player 1 won after 345 rounds and surviving 23 WARS.
# Simulate again?
#
# Deck.shuffle
#
