# My First Rails App

## Description

Hey, welcome to Rails! Let's make an app!

## Learning objectives

* Get a Rails app up and running
* Write a few routes
* Learn about controllers
* Maybe do a little views

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `4.2 - First Rails -- YOUR NAME`.
* A repository named `4.2-FirstRails` containing at least a `README.md` file
* A Pull Request (PR) in your `4.2-FirstRails` repo:
  * _from_ branch `dev`
  * _into_ branch master
* A comment on your original Issue with a link to your PR
* Said issue assigned to me, @dummied

### Requirements

* One controller, named `WelcomeController`
* With three actions (all just rendering text):
  * Index: GET "/", returns a welcome message
  * Show: GET "/billy", returns a specializaed welcome message for whatever name is passed to it as a param
  * Lorem: GET "/lorem/standard", returns lorem ipsum of the type requested (hint: Day 1 homework)

### Hard mode

* Render the above as views instead.
* Add a second, optional, parameter to the lipsum endpoint that allows for the number of paragraphs you'd like. And returns said number of paragraphs.

### Nightmare mode

* Move your lipsums into classes ("models") and rather than repeat the same paragraph, make them vary.
