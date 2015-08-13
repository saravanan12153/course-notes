# Week 7 Lab: Gif-ify

## Description

It's time to really flex our newly-formed JavaScript muscles and build a single page application - an app with no page refreshes or reloads past the initial load.

## Objectives

* The AJAX request cycle
* Rails remote links and forms
* JavaScript
* GIFS!!!!!!

## Deliverables

* A rails app repo with:
  * Rails 4.2.3
  * A working db/seeds.rb to load in some initial gifs - developer's choice.
* A link to a live Heroku instance
* This app should look presentable (this is code for Bootstrap)
* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 7 Lab - SPA - <YOUR_NAME>`.
* A comment on your original Issue with a link to your live Heroku app and the GitHub repo for the app
* Said issue assigned to me, @dummied

## Requirements

**For all the below:** Everything handled via AJAX requests with no page load past the first.

### Normal Mode

* The front page should display a grid of available gifs (use Bootstrap's [img-responsive class](http://getbootstrap.com/css/#images-responsive) to size down the full size gifs)
* We're only allowing gifs here. Verify the file extension and handle validation errors appropriately.
* Clicking a gif should open a modal display of the gif as large as the modal will allow, a copy-and-pasteable display of the url to the image file, the user who uploaded it and the time and date it was added
* If I sign up for an account, I can add my own through a modal form.
* When that's submitted, it pops to the top of the grid.

### Hard Mode

* Logged in users can upvote and downvote gifs and the list is sorted by their overall score. The votes display in the grid, but the actual voting happens in the modal. Once I vote, the score is auto-updated in the modal and the grid (but don't worry about re-sorting the grid)
* Gifs can be tagged. If I click a tag name, the grid just shows gifs that match that tag
* If I click on a user, the grid is now just the photos added by that user

### Nightmare Mode

* OK. Let's sort that grid when I vote.
* The list of photos is paginated. You can either load more photos using endless pagination (more load as I scroll down the page) or via pagination links
* The tag and user views should also have regular old HTML views/versions. Like: `/tags/funny` and `/user/cvannoy`
* Your models should have tests - thorough ones.
