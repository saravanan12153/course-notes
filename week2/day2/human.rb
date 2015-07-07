class Human
  attr_accessor :name,
                :alertness,
                :coffee_type

  def initialize(name, alertness=0)
    @name = name
    @alertness = alertness
  end

  def has_coffee?
    !coffee_type.nil?
  end

  def needs_coffee?
    alertness < 0.50
  end

  def buy(coffee)
    self.coffee_type = coffee
  end

  def drink!
    if coffee_type.nil?
      "You need to buy a coffee first"
    else
      self.alertness += 0.33
      coffee_type.coffee_amount = coffee_type.coffee_amount - 1
      if coffee_type.coffee_amount == 0
        self.coffee_type = nil
      end
    end
  end

end
