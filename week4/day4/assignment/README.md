# Surf And Paddle, in Rails

## Description
Surf And Paddle, in Rails


## Objectives

### Learning Objectives

After completing this assignment, you should…

* Understand how dynamic pages work on the web
* Understand how URLs rule everything
* Understand the concept of MVC architecture



### Performance Objectives

After completing this assignment, you be able to effectively use

* Able to create a rails app
* Style the rails app using the asset pipeline
* Use the Router (config/routes) to have a dynamic set of pages
* Pass data from the controller to the views to render



## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 4 Lab - Surf-n-Paddle Rails -- YOUR NAME`.
* A repository named `SurfnPaddleRails` containing at least a `README.md` file
* A Pull Request (PR) in your `SurfnPaddleRails` repo:
  * _from_ branch `dev`
  * _into_ branch master
* A comment on your original Issue with a link to your PR
* Said issue assigned to me, @dummied

### Requirements


## Normal Mode

1. Craft a Rails app that shows your Surf and Paddle
  * Images and styles should be handled via the asset pipeline.

2. Make the pages dynamic, where:  
  * The root page shows the latest post (Note: Latest post will be the most-recent created_at date)
  * The images at the bottom of the page link to that post
  * When viewing that post (URL will be /posts/:id) it shows that
  post

## Hard Mode

1. Make an about page. And handle it through a separate controller.

2. The title tag should change between the pages

3. All the nav, header and footer items should work

4. Change our posts so that they can also have a specific image (and method) associated with each object (ala. post.image == "whatever.jpg"). Use that to manage the images that should in the views.

5. Have the posts at the bottom be ordered by created_at (Most recent on the left, to oldest on the right). This list _shouldn't_ include the post being displayed in the main area (on the front, the most recent post shouldn't be there. On Post show pages, the post being shown shouldn't be there)

## Nightmare Mode

1. Redo your Surf-n-Paddle to use bootstrap

2. Make the search box actually function and return a page of posts that match that search term.




## Notes:

* There is no database in this lab, but we will have databases next week.
* Drop the `posts.rb` file in this repo (^) into your Rails app's `app/models` folder and edit to give your posts actual content.


## Additional Resources

* Watch [Sending Data From Controller to View](https://gorails.com/episodes/sending-data-between-controllers-and-views)
* Watch [Rails Application Structure](https://gorails.com/episodes/rails-application-structure)
* Watch [Params Hash](https://gorails.com/episodes/the-params-hash)
