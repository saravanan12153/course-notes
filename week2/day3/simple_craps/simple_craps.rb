require_relative 'dice'
require_relative 'loaded_dice'
class SimpleCraps

  def self.play
    die1 = [Dice, LoadedDice].sample.new
    die2 = [Dice, LoadedDice].sample.new
    # die1 = Dice.new
    # die2 = Dice.new
    # die1 = LoadedDice.new
    # die2 = LoadedDice.new
    puts "Welcome to our table. Take your first roll (any key)."
    gets
    value1 = 0
    value2 = 0
    first_total = 0
    first_time = true
    until winning_time?(first_total, value1, value2, first_time) || losing_time?(first_total, value1, value2, first_time)
      value1 = die1.roll
      value2 = die2.roll
      if first_time
        first_total = value1 + value2
      end
      if losing_time?(first_total, value1, value2, first_time)
        puts "You lost. (You rolled a #{value1 + value2})"
        puts "Where's my money?!?!?!"
        exit
      end
      if winning_time?(first_total, value1, value2, first_time)
        puts "You rolled a #{value1 + value2}!"
        puts "Winner, winner, chicken dinner!"
        exit
      end
      puts "You rolled a #{value1 + value2}. Roll again."
      if first_time
        value1 = 0
        value2 = 0
        first_time = false
      end
      gets
    end

  end

  def self.winning_time?(first_total, value1, value2, first_run=false)
    if first_run
      [7, 11].include?([value1, value2].inject(0){|sum, x| sum + x})
    else
      first_total == value1 + value2
    end
  end

  def self.losing_time?(first_total, value1, value2, first_run=false)
    if first_run
      false
    else
      [7, 11].include?([value1, value2].inject(0){|sum, x| sum + x})
    end
  end

  end
end

SimpleCraps.play
