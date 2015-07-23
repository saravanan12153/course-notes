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

* A repo containing at least a Rails 4.2 application

### Requirements


## Normal Mode

1. Craft a Rails app that shows your Surf and Paddle
  * Images and styles should be handled via the asset pipeline.

2. Make the pages dynamic, where:  
  * The root page shows the latest post
  * The images at the bottom of the page link link to that post
  * When viewing that post (URL will be /posts/:id) it shows that
  post

## Hard Mode

1. Make an about page. And handle it through a separate controller.

2. The title tag should change between the pages

3. All the nav, header and footer items should work

4. Change our posts so that they can also have a specific image (and method) associated with each object (ala. post.image == "whatever.jpg"). Use that to manage the images should in the views.

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
