require 'minitest/autorun'

require './human'
require './coffee'

class CaffeineTest < MiniTest::Test

  def setup
    @human = Human.new "Tyler"
    @coffee = Coffee.new "Black"
  end

  def test_humans_tend_to_be_sleepy
    assert @human.alertness < 0.1
  end

  def test_humans_need_coffee
    refute @human.has_coffee?
    assert @human.needs_coffee?
  end

  def test_humans_can_drink_coffee
    assert @coffee.full?

    @human.buy @coffee
    @human.drink!
    assert(@human.alertness.between?(0.1, 0.33))
    refute @coffee.full?
    refute @coffee.empty?
  end

  def test_humans_can_drink_all_the_coffee
    @human.buy @coffee

    3.times { @human.drink! }
    assert @coffee.empty?
    assert @human.alertness > 0.9
  end

  def test_has_coffee
    @human.buy @coffee

    assert @human.has_coffee?
    assert @human.needs_coffee?
  end

  def test_needs_coffee
    @human.buy @coffee

    2.times { @human.drink! }

    assert @human.has_coffee?
    refute @human.needs_coffee?
  end

  def test_empty_coffee
    @human.buy @coffee

    3.times { @human.drink! }

    refute @human.has_coffee?
    assert @human.drink! == "You need to buy a coffee first"
  end

  def test_metahumans
    arnold = Human.new "Arnold", 10

    assert arnold.alertness == 10
    refute arnold.needs_coffee?
  end

end
