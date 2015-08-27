class SimpleCrapsGame

  def self.get_dice(num=2)
    # num.times.collect{|_num| [Dice, LoadedDice].sample.new}
    num.times.collect{|_num| Dice.new}
  end

  def self.statistics
    unless defined?(@@statistics)
      @@statistics = {wins: [], losses: []}
    end
    @@statistics
  end

  def self.run_stats
    bulk_play
    puts "You won #{statistics[:wins].length} times."
    puts "The house won #{statistics[:losses].length} times."
  end

  def self.play
    die = Dice.new
    puts "Welcome to our table. Take your first roll (any key)."
    $stdin.gets
    value1 = 0
    value2 = 0
    first_total = 0
    first_time = true
    until winning_time?(first_total, value1, value2, first_time) || losing_time?(first_total, value1, value2, first_time)
      value1, value2 = die.roll, die.roll
      if first_time
        first_total = value1 + value2
      end
      if losing_time?(first_total, value1, value2, first_time)
        puts "You lost. (You rolled a #{to_emoji(value1)} #{to_emoji(value2)})"
        puts "Where's my money?!?!?!"
        exit
      end
      if winning_time?(first_total, value1, value2, first_time)
        puts "You rolled a #{to_emoji(value1)} #{to_emoji(value2)}!"
        puts "🎉 🎉, 🐔 🍲"
        exit
      end
      puts "You rolled a #{to_emoji(value1)} #{to_emoji(value2)}. Roll again."
      if first_time
        value1 = 0
        value2 = 0
        first_time = false
      end
      $stdin.gets
    end

  end

  # Wikipedia: A come-out roll of 7 or 11 is a "natural", and the Pass line wins.
  # Wikipedia: If the shooter "hits" the point value again (any value of the
  # dice that sum to the point will do; the shooter doesn't have to exactly
  # repeat the value combination of the come-out roll) before rolling a seven,
  # the Pass line wins
  def self.winning_time?(first_total, value1, value2, first_run=false)
    if first_run
      [7, 11].include?([value1, value2].inject(0){|sum, x| sum + x})
    else
      first_total == value1 + value2
    end
  end

  # Wikipedia: A come-out roll of 2, 3 or 12 is called "craps" or
  # "crapping out", and anyone betting the Pass line loses.
  # Wikipedia: If the shooter rolls any seven before repeating the point
  # number (a "seven-out"), the Pass line loses.
  def self.losing_time?(first_total, value1, value2, first_run=false)
    if first_run
      value1 + value2 == 2 || value1 + value2 == 12 || value1 + value2 == 3
    else
      value1 + value2 == 7
    end
  end

  def self.to_emoji(value)
    case value
    when 1
      "⚀"
    when 2
      "⚁"
    when 3
      "⚂"
    when 4
      "⚃"
    when 5
      "⚄"
    when 6
      "⚅"
    end
  end

end
