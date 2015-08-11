# Week Seven, Day Two: Array Play with JavaScript

## Description

Today, we're going to play around a bit with Arrays, Hashes and functions - this time with JavaScript instead of Ruby.

## Objectives

* Write some JavaScript
* Understand Arrays
* Understand Hashes
* Write some methods

## Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 7, Day 2 - Intro to JavaScript - <YOUR_NAME>`.
* A [CodePen](http://codepen.io/) account and "pen" with the solutions to the below.
* A comment on that issue when you're done that has the link to aforementioned "pen" (the url of the pen will be fine and preferred)
* Said issue closed and assigned to me @dummied

## Details

### Normal Mode

1. Create an array of all of the students in our class. Assign it to a variable named "our_class".
2. Find all the students whose first name is less than 5 characters
3. Turn a sentence into an Array, and select the words that are four characters long. Here's your sentence: `var sentence = "Javascript is actually kind of fun once you get used to it.";`
4. Create an array of movies with budgets of less than 100 and another array of movies that starred Leonard DiCaprio.

```javascript
var movies = [];
movies.push({
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
});
movies.push({
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
});
movies.push({
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
});
movies.push({
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
});
movies.push({
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
});
```

### Hard Mode

5. Make a method that will always return the words in a String that contain four characters. Called as: `four_words(text)`
6. Make a method that will return the words in a String that are `x` characters long (as in: `how_many_words(text, num)`)
7. What's the total budget of our movies?

### Extras

* Tomorrow, we'll be back into Rails, so make sure your Twitter Lab is ready to rock.
* Standing leftover homework are the [Ruby Koans](https://github.com/neo/ruby_koans). Follow the instructions in the README to get going.
