require 'minitest/autorun'
require './enumerables'

class EnumerablesTest < MiniTest::Test

  def test_selects
    assert Enumerables.hard_earth_records == Enumerables.easy_earth_records
  end

  def test_collects
    assert Enumerables.hard_collect_destinations ==
    Enumerables.easy_collect_destinations
  end

  def test_injects
    assert Enumerables.hard_sum_earnings == Enumerables.easy_sum_earnings
  end

  def test_groups
    assert Enumerables.group_by_destination ==
    Enumerables.easy_group_by_destination
  end

  def test_rejects
    assert Enumerables.hard_nonearth_records == Enumerables.easy_nonearth_records
  end

  def test_say_hi
    assert Enumerables.say_hi == "Howdy, ya'll"
  end

  def test_moon_trips
    assert Enumerables.moon_trips.length == 1
  end

end
