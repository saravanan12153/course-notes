# Surf-N-Paddle with a database

## Description

Now that we know about Active Record and databases, let's make our Surf-N-Paddle blog be database-backed.

## Learning objectives

* Understanding basic database modeling
* Using Active Record
* Understanding migrations
* Understanding associations

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `5.2 - SnP Active Record -- YOUR NAME`.
* A repository named `5.2-SnPActiveRecord` containing at least a `README.md` file
* A Pull Request (PR) in your `5.2-SnPActiveRecord` repo:
  * _from_ branch `dev`
  * _into_ branch master
* A comment on your original Issue with a link to your PR
* Said issue assigned to me, @dummied

### Requirements

* Remove the existing `app/models/post.rb` file. You might want to stash it somewhere else if you want to reuse the content of your posts later.
* Make a new Active Record model to hold our posts.
* Make some posts (using the rails console)
* Use those posts in your controllers and views in place of the Ruby class you were using before.

### Hard mode

* Create an Author model
* Create an association between authors and post
* Use your new author class to replace the previous author logic

### Nightmare mode

* Write tests for the above association.
* Add validations to posts and authors to prevent invalid data
* Add tests for said validations
