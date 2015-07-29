# Week 5, Day 3: A fully operational Surf-n-Paddle

## Description

As you might have realized from yesterday's assignment, creating posts via the `rails console` can be _painful_.

Today, we'll fix that and make it so we can create posts directly from the site.

## Learning Objectives

* HTML Forms
* Rails resource routing
* Rails scaffolding (perhaps)
* Rails form helpers
* Living in a world where you don't know what data you're going to be dealing with

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `5.3 - SnP Final -- YOUR NAME`.
* A Pull Request (PR) in either a new repo or your existing SnP repo:
  * _from_ branch `forms`
  * _into_ branch master
* A comment on your original Issue with a link to your PR
* Said issue assigned to me, @dummied

### Requirements

#### Normal Mode

* `posts/new` should present a form where I can enter post content. Upon submission, it should save the new post and show me my newly created post
* `posts/:id/edit` should present me with a form to edit an existing post. The form fields should have the existing values for each. When I submit the form, it should update the record in the database and then show me my newly updated post
* When you have more than 10 posts, nothing should break in your layout.
* Posts should validate that they have a title, a body and an author. And the forms should present those validation errors to the user.

#### Hard Mode

* I should also have the ability to add and edit authors in the system
* When I create or edit a post, I should get a drop down of authors to choose.
* These forms should look good (in bootstrap if that's your thing)

#### Nightmare Mode

* The options for author in the post form should default to a blank value on a new post.
* A title should also be validated as longer than 10 characters, and if that validation fails, it should have a custom error message of "Your post title is #{number_of_characters_short} too short." (where `number_of_characters_short` is the, well, number of characters short)
* You should have a list view of posts. That list should have at most 10 posts on it, and if you have more posts, there's a link to go to a second page which displays more (and so forth). This behavior is commonly called "pagination".
* `authors/:id/posts` should display a list of posts by a particular author (`:id`). Bonus: Look into nested routes. Use a partial to reuse the post display for the regular list view.
