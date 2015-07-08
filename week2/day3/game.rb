class Game
  attr_accessor :player_one_choice, :computer

  def self.bulk_plays
    unless defined?(@@plays)
      @@plays = {
                  player_one_wins: [],
                  computer_wins: [],
                  ties: []
                }
    end
    @@plays
  end

  def self.statistics(plays=1000)
    results = Game.new.bulk_play(plays)
    puts "Player One won #{results[:player_one_wins].length} times."
    puts "The computer won #{results[:computer_wins].length} times."
    puts "We tied #{results[:ties].length} times."
    results[:player_one_wins].group_by{|move| move}.each do |key, value|
      puts "Player one won games using #{key} #{value.length} times."
    end
    results[:computer_wins].group_by{|move| move}.each do |key, value|
      puts "The computer won games using #{key} #{value.length} times."
    end
    (results[:computer_wins] + results[:player_one_wins]).group_by{|move| move}.each do |key, value|
      puts "Overall, players won games using #{key} #{value.length} times."
    end

    nil

  end


  def player_one_choice
    @player_one_choice.downcase
  end

  def computer
    @computer.downcase
  end

  def play
    self.computer = %w(rock paper scissors).sample
    puts "Rock, paper, scissors?"
    self.player_one_choice = $stdin.gets.chomp
    output_outcome(determine_winner)
    puts "Play again?"
    desire = $stdin.gets.chomp.downcase
    if desire == "y"
      play
    end
  end

  def bulk_play(plays=1000)
    plays.times do
      self.computer = %w(rock paper scissors).sample
      self.player_one_choice = %w(rock paper scissors).sample
      result = determine_winner
      if result == :wins
        self.class.bulk_plays[:player_one_wins] << player_one_choice
      elsif result == :loses
        self.class.bulk_plays[:computer_wins] << computer
      else
        self.class.bulk_plays[:ties] << player_one_choice
      end
    end
    return self.class.bulk_plays
  end


  def determine_winner
    if player_one_choice == computer
      :ties
    elsif winning_conditions.include?([player_one_choice, computer])
      :wins
    else
      :loses
    end
  end

  def winning_conditions
    [
      ["rock","scissors"],
      ["scissors", "paper"],
      ["paper", "rock"]
    ]
  end

  def output_outcome(outcome)
    puts "Player: #{player_one_choice.upcase} vs Computer: #{computer.upcase} ----- PLAYER #{outcome.to_s.upcase}"
  end

end

if ARGV[0] == "play"
  game = Game.new
  game.play
end
