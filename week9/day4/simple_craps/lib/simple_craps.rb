require "simple_craps/version"
require "simple_craps/dice"
require "simple_craps/loaded_dice"
require "simple_craps/simple_craps"

module SimpleCraps
  class GamePlay
    def self.play
      SimpleCrapsGame.play
    end
  end
end
