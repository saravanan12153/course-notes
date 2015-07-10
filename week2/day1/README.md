# Testing, testing, 1, 2, 3?

We started off the day taking our dastardly `Enumerable` methods and breaking them down into `.each` blocks.

You can view the results in a [gist](https://gist.github.com/dummied/0c4a3ae8b92575f1ef78#file-enumerables-rb).

Along the way, we also started talking about tests and testing in Ruby.

(And wrote tests for our enumerable method rewrites. [See here.](https://github.com/tiy-indianapolis-ror-june2015/course-notes/blob/master/week2/day1/in_class_scratchpad.rb))

## Why we test

Ruby is a dynamic scripting language, rather than a language that passes through a compiler (a compiler is a program that changes our code into something we can think of as static or fixed).

So, there's nothing there to prevent you from introducing bugs. And, _spoiler_, you will introduce bugs.

Lots of 'em.

Tests do several things:

* Check and enforce that code does what you expect it to do.
* Check that the code _still_ does what you expect it to do when you make changes later.
* Give you the confidence to change the code to a better version of itself, and _still_ know that the code does what you expect.
* Clearly outlines what you expect the code to do for others who run across the code later.

In general writing tests _first_ gives you a few other advantages:

* It makes you think about about what the code you're about to write does.
* It forces you to write shorter methods (that's a good thing because shorter methods are more easily testable (and understandable) methods).
* In general, it forces you to write your program in small, iterative chunks. Which, believe it or not, makes the coding go _faster_.

## Testing frameworks in Ruby

In class, we've been talking about [minitest](http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest.html) so far. This is mostly because minitest is included in Ruby itself and is a little more lightweight (cognitavly) than some of the other options.

The primary other option is [rSpec](http://rspec.info/). In professional environments, you might even find rSpec more often than minitest (especially if it's an app that's been around for a few years).

We'll chat more about rSpec and related things such as [Cucumber](https://cucumber.io/) later in class, but for now, we'll concentrate on minitest.

## Testing with minitest

Let's say we have a class like the following:

```
require 'date'

class Person
  attr_accessor   :hair_color,
                  :eye_color,
                  :disposition,
                  :name,
                  :time_of_death

  def initialize(hash)
    @hair_color = hash[:hair_color]
    @eye_color = hash[:eye_color]
    @disposition = hash[:disposition]
    @name = hash[:name]
  end

  def say_hi
    "Howdy!"
  end

  def walk(steps=60)
    "I walked #{steps} steps"
  end

  def say_name
    "Hi, my name is #{name}"
  end

  def die
    self.time_of_death = Time.now
  end

  def deceased?
    time_of_death < Time.now
  end

  def arise!
    self.time_of_death = nil
  end

  def alive?
    time_of_death.nil? || time_of_death > Time.now
  end

  def self.gather
    10.times.collect do |num|
      Person.new({name: "Person #{num + 1}"})
    end
  end

end
```

We'd like to add tests so we can ensure that future changes will not change the functioning of the code.

Using minitest, we'd have something that looks like this:

```
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
```

Now, we can change (or _refactor_) the code of that class and rest assured that everything still works as intended.

### Running your tests

Assuming the above chunks of code are called `person.rb` and `person_test.rb`, we can run them by hand from the command line like so:

```
ruby person_test.rb
```

#### Reading the output

When you run your test file, you'll get something in the console like this:

```
Run options: --seed 17568

# Running:

........

Finished in 0.001610s, 4970.0616 runs/s, 8076.3500 assertions/s.

8 runs, 13 assertions, 0 failures, 0 errors, 0 skips
```

Each `.` after `# Running:` represents a passing test. In the example above, all of our tests are passing - Woot!

If you have a failure, it might look more like:

```
Run options: --seed 50217

# Running:

.....F..

Finished in 0.001506s, 5311.3197 runs/s, 8630.8945 assertions/s.

  1) Failure:
PersonTest#test_rebirth [person_test.rb:50]:
Failed assertion, no message given.

8 runs, 13 assertions, 1 failures, 0 errors, 0 skips
```

A failure represents a failed assertion. You can also have _errors_ in your code, though. Like the following:

```
Run options: --seed 47369

# Running:

..E.....

Finished in 0.001517s, 5273.4098 runs/s, 7910.1148 assertions/s.

  1) Error:
PersonTest#test_rebirth:
NoMethodError: undefined method `whatever' for 2015-07-09 21:31:32 -0400:Time
    /Users/chrisvannoy/Documents/IronYard/June2015/course_notes/week2/day1/person.rb:39:in `arise!'
    person_test.rb:49:in `test_rebirth'

8 runs, 12 assertions, 0 failures, 1 errors, 0 skips
```

The `E` means that test errored out.

### Getting better testing messages

You might have noticed from the output of the failure example above that our code for the `person_test` isn't giving us the best possible error message.

This is because we used `assert` bare. To get better error messages, we have two options:

* We can pass a second argument to the `assert` method to set an error message. ([See documentation](http://docs.seattlerb.org/minitest/Minitest/Assertions.html#method-i-assert))
* We could switch our tests to use `assert_equal` instead. One (to me anyway) counter-inuitive note on `assert_equal`: Your first argument is going to be the _expected_ value, not the actual value. ([See documentation](http://docs.seattlerb.org/minitest/Minitest/Assertions.html#method-i-assert_equal))

## 1-on-1s

We used the afternoon to do one-on-one review of the weekend lab on CSV parsing and data analysis.

Everyone completed the lab (Professor Farnsworth thanks each of you) and generally did a good job of it.

Some general notes:

* Watch your indentation. Well-indented code looks good, sure, but it also has real practical usefulness.
* Look at that: You can pass a hash as a method argument. In many labs, you used that to pass the CSV row directly into `Delivery.new`
* Take a look at using `group_by` (which we covered in the morning) to [DRY] up your code for pilot stats.

## Homework

Despite the fact that I was doing 1-on-1s all afternoon, I assigned a test file and had you write code to make those tests pass.

Details [over here](https://github.com/tiy-indianapolis-ror-june2015/course-notes/tree/master/week2/day1/assignment).
