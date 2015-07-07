class Coffee
  attr_accessor :name,
                :coffee_amount

  def initialize(name)
    @name = name
    @coffee_amount = 3
  end

  def full?
    coffee_amount == 3
  end

  def empty?
    coffee_amount == 0
  end

end
