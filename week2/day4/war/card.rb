class Card
  attr_accessor :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def ==(card)
    self.value == card.value
  end

  def >(card)
    self.value > card.value
  end

  def <(card)
    self.value < card.value
  end

  def suited?(card)
    self.suit == card.suit
  end

end
