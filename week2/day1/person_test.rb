require 'minitest/autorun'
require './person'

class PersonTest < MiniTest::Test

  def test_new_person
    attributes = {
      eye_color: "blue",
      hair_color: "blonde",
      disposition: "hangry"
    }
    person = Person.new(attributes)
    assert person.eye_color == "blue"
    assert person.hair_color == "blonde"
    assert person.disposition == "hangry"
  end

  def test_say_hi
    person = Person.new({eye_color: "blue"})
    assert person.say_hi == "Howdy!"
  end

  def test_walk
    person = Person.new({eye_color: "blue"})
    assert person.walk(10) == "I walked 10 steps"
    assert person.walk == "I walked 60 steps"
  end

  def test_person_has_name
    person = Person.new({name: "Chuck"})
    assert person.name == "Chuck"
  end

  def test_say_name
    person = Person.new({name: "Charles"})
    assert person.say_name == "Hi, my name is Charles"
  end

  def test_die
    person = Person.new({name: "Death"})
    person.die
    assert person.deceased?
  end

  def test_rebirth
    person = Person.new({name: "George"})
    person.die
    assert person.deceased?
    person.arise!
    assert person.alive?
  end

  def test_gather
    people = Person.gather
    assert people.length == 10
    assert people.first.name == "Person 1"
  end

end
