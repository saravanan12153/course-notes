class Player

  attr_accessor :name, :deck, :winnings

  def initialize(name, deck=Deck.new)
    @name     = name
    @deck     = deck
    @winnings = []
  end

  def play_card
    self.deck.cards.shift
  end

  def say_name
    "Hi, may name is #{name}!"
  end

end
