require_relative "card"
require_relative "deck"
require_relative "player"

class Game

  attr_accessor :player1,
                :player2

  def initialize
    @player1 = Player.new("Player One")
    @player2 = Player.new("Player Two")
  end

  def play
    until player1.deck.empty? || player2.deck.empty?
      card_one = player1.play_card
      card_two = player2.play_card
      if card_one > card_two
        player1.winnings << card_one
        player1.winnings << card_two
      elsif card_two > card_one
        player2.winnings << card_one
        player2.winnings << card_two
      end
    end
    puts "#{winner.name} won with a score of #{score}."
  end

  def winner
    [player1, player2].max_by { |player| player.winnings.length }
  end

  def score
    [player1.winnings.length, player2.winnings.length].sort.reverse.join("-")
  end

end
