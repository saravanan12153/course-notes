# Week One, Day Two: Array Play

## Description

Today, we're going to play around a bit with Arrays and Hashes, two key Ruby data structures.

## Objectives

* Write some Ruby
* Understand Arrays
* Understand Hashes
* Write your first method

## Deliverables

A [gist](http://gist.github.com) containing Ruby code. This one need not be run from the command line; just the code to do each task.

## Details

### Normal Mode

1. Create an array of all of the students in our class. Assign it to a variable named "our_class".
2. Find all the students whose first name is less than 5 characters
3. Turn a sentence into an Array, and select the words that are four characters long. Here's your sentence: `sentence = "Ruby is actually kind of fun once you get used to it."`
4. Create an array of movies with budgets of less than 100 and another array of movies that starred Leonard DiCaprio.

```
movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}
```

### Hard Mode

5. Make a method that will always return the words in a String that contain four characters. Called as: `four_words(text)`
6. Make a method that will return the words in a String that are `x` characters long (as in: `how_many_words(text, num)`)
7. What's the total budget of our movies?

### Nightmare Mode

8. Sort our students into their rows in class.
