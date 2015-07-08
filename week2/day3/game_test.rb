require 'minitest/autorun'
require_relative 'game'

class GameTest < MiniTest::Test

  def setup
    @choices = %w(rock paper scissors)
  end

  def test_determine_winner
    @choices.each do |choice|
      results = []
      game = Game.new
      game.player_one_choice = choice
      @choices.each do |comp_choice|
        game.computer = comp_choice
        results << game.determine_winner
      end
      assert_equal [:loses, :ties, :wins], results.sort
    end
  end

end
