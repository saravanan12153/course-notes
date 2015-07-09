class Deck
  attr_accessor :cards

  def initialize
    suits = %w(hearts diamonds clubs spades)
    values = (2..14).to_a
    @cards = []
    suits.each do |suit|
      values.each do |val|
        @cards << Card.new(suit, val)
      end
    end
    shuffle!
  end

  def shuffle!
    self.cards.shuffle!
  end

  def empty?
    self.cards.empty?
  end

  def first
    cards.first
  end

end
