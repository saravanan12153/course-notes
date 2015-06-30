# Groups of things

Today, we're going to be chatting primarily about two core Ruby types: Arrays and Hashes.

## Arrays

Arrays are an ordered list of things. Pop open `irb` and feast on the following:

```
foodstuffs = ["burgers", "fries", "bratwurst", "coke"]
puts foodstuffs[0]
puts foodstuffs.first
puts foodstuffs[-1]
puts foodstuffs.last
foodstuffs.each do |food|
  puts "I like to consume #{food}."
end
puts foodstuffs[12]
```

I mentioned before that code block that arrays are _ordered_. That means that you can find a specific element of an array by its _index_ (that's the `[0]`) bit above. Try it with other number and see what you get.

The `[-1]` is a kind of special case, at least when you first run across it. But think about it, you're going one past the first item, which loops back around to the end of the array. Try other negative numbers and see what you get.

When you pick an index that isn't in the array, you'll get nothing (or `nil`).

Here are some other fun array things:

```
breakfast = ["eggs", "bacon", "biscuits"]
lunch = ["ham salad", "chips", "fruit"]
dinner = ["pork chops", "baked beans", "mac and cheese"]
all_meals = breakfast + lunch + dinner
puts all_meals.inspect
skip_breakfast = all_meals - breakfast
puts skip_breakfast.inspect
skip_breakfast.include?("eggs")
all_meals.include?("bacon")
dessert = "apple pie"
all_meals << dessert
puts all_meals.inspect
```
