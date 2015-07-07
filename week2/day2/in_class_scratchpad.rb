class LowOrHigh

  def self.play
    unless defined?(@@range)
      self.choose_ender
    end
    ender = @@range == 0 ? 1000 : @@range
    @@our_number = pick_a_number(ender)
    puts "I'm thinking of a number between 1 and #{ender}. Care to guess?"
    guess = gets.to_i
    handle_guesses(guess)
  end

  def self.choose_ender
    puts "How high of a range would you like to guess between? The default is 1,000"
    @@range = gets.to_i
  end

  def self.handle_guesses(guess)
    if @@our_number == guess
      puts "That's it. Balloons. Parades."
      puts "Want to play again (y/n)?"
      desire = gets.chomp
      if desire == "y"
        self.play
      else
        puts "OK then."
        exit
      end
    elsif @@our_number > guess
      puts "You're low. Guess again?"
      new_guess = gets.to_i
      handle_guesses(new_guess)
    elsif @@our_number < guess
      puts "You're high. (Not that kind) Guess again?"
      new_guess = gets.to_i
      handle_guesses(new_guess)
    end
  end


  def self.pick_a_number(ender=1000)
    (1..ender).to_a.sample
  end


end

LowOrHigh.play

# > I'm thinking of a number between 1 and 100. Care to guess?
# > '50'
# > You're low. Guess again?
# > '75'
# > You're high. (Not that kind) Guess again?
# ...
# That's it. Balloons. Parades.
