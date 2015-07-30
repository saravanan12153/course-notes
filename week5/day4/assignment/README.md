# Reddit

## Description
Build Reddit (bookmarks and voting in Rails using Forms and relationships)


## Objectives

### Learning Objectives

After completing this assignment, you should…

* Be able to utilize Forms in Rails
* Be able to add custom routes to your resources

### Performance Objectives

After completing this assignment, you be able to effectively use

* Modeling Data
* Publishing on Heroku

## Details

### Deliverables

* A rails app repo with:
  * Rails 4.2.3
  * Functioning db/seed.rb
* A link to a live Heroku instance
* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 5 Lab - reddit - <YOUR_NAME>`.
* A comment on your original Issue with a link to your live Heroku app and the GitHub repo for the app
* Said issue assigned to me, @dummied

### Requirements

* Reddit is "User-generated news links. Votes promote stories to the front
  page."
* Each Link should have many Votes associated with it.
* The homepage should order by the most number of votes
* Clicking on a link should create a positive vote and then send the user to the link in question
* Click on a vote link or button should also create a positive vote


## Normal Mode
Normal mode is a simple, naive, implementation of Reddit

![reddit](https://raw.githubusercontent.com/theironyard/rb-assignments/master/projects/reddit/assets/reddit.png)

* Display the number of votes next to the link title, the link title will be linked (and eventually end up at the url of the link you clicked), and an optional summary of the link
* Scaffold is _fine_

## Hard Mode

* Clicking "DOWN" should create a negative vote
* Add a `User` who `has_many links`
* When submitting a link, allow user to select themselves in a drop down
* Check the Links for unique URLs and if the link already exists, add a vote and send them to the home page

## Nightmare Mode

* Links should have a category or subreddit. And you can pick that when creating a link
* Style things a bit better using bootstrap rather than the default scaffold HTML and styling


## Insane Mode

* Make the user sign in using `Devise` or similar
* Create a subfolder for each "sub-reddit", like LOL and Gifs

## Notes

* To launch on heroku, you'll need the [Heroku Toolbelt](https://toolbelt.heroku.com/)
  and a [Heroku Account](https://signup.heroku.com/login)


## Additional Resources

* Read [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
* Read [Rails Routing from the Outside In](http://guides.rubyonrails.org/routing.html)
* Read [Action Controller Overview](http://guides.rubyonrails.org/action_controller_overview.html)
