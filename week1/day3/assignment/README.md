# Week One, Day Three: Like a Robot

## Description

Time to start getting object oriented. We're going to make our own classes for types of robots and give 'em some methods.

## Objectives

* Write your own classes
* Make objects from those classes
* Make those classes and objects have methods

## Deliverables

A [gist](http://gist.github.com) containing your class definitions.

## Details

### Normal Mode

1. **Define a Robot class:** A robot has a name
2. A robot instance should have a method called 'say_hi' and it should return "Hi!"
3. A robot instance should have a method called 'say_name' and it should return "My name is X" where X is the robot's name
4. **Define a BendingUnit class**
5. A BendingUnit inherits from Robot
6. A bending unit instance has a method called 'bend'
7. The bend method has one argument 'object_to_bend'
8. The bend method should put to the console "Bend X!" where X is object_to_bend
9. **Define an ActorUnit class**
10. An ActorUnit inherits from Robot
11. An ActorUnit instance has a method called 'change_name'
12. The 'change_name' method accepts an argument 'new_name'
13. The 'change_name' method changes the name property of the robot to 'new_name'

### Hard Mode

1. Take our student array from yesterday and (programtically) create robots out of all of them and store them in an array.
2. Do the previous using an Enumerable method
3. Robots should also have a height, with a default value of 10

### Nightmare Mode

_Of note: This section is more nightmarish than is typical. Beware: Thar be dragons._

1. When you call an undefined method on a Robot, rather than throw an error, return "Does not compute"
