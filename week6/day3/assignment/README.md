# Week 6, Day 3: Return of the Reddit

## Description

Let's continue working in Reddit, adding more features and continuing to add polish.

This is last day of Reddit. And there was much rejoicing.

![](http://media.giphy.com/media/WIg8P0VNpgH8Q/giphy.gif)

### Learning Objectives

* Nested routes/resources
* Refactoring
* More heroku deployments
* Polymorphic relationships
* The asset pipeline
* Cache columns

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 6, Day 3 - death to reddit - <YOUR_NAME>`.
* A closed pull request (from `finale` to `master`) containing today's work
* A comment on that issue when you're done that has the link to the _updated_ (not new) app on heroku and a link to the aforementioned pull request
* Said issue closed and assigned to me @dummied

### Requirements

#### Normal Mode

* In the course of the week, I've made code comments/issues in your weekend lab repository. Fix those. Ideally, close those issues using your git commit message.
* If you haven't completed _everything_ in the weekend Reddit lab, keep working on it.
* If something in today's (or yesterday's) lecture seemed like a better idea than what you had done, refactor your code to improve it.
* Add comments to links. They should belong to a user and require a user to create one.
* Show the comments, but not the form, to non-logged-in users.
* Make it so there's a link to specific comment (for sharing/shaming)
* Include Bootstrap through the asset pipeline via the `bootstrap-sass` gem.

#### Hard Mode
* Comments should be _threaded_ (as in: you can comment on a comment on a comment ... etc.)
* Comments should also display as threaded


#### Nightmare Mode

* Create user profiles. Said profile should include the user's links (or posts), their comments, their upvoted and downvoted links and a bio that they can edit.
* Going to `/users/self` should show my own bio and give me a link to edit the bio and such
* Going to `/users/:id` should display a specific user profile, but not allow me to edit it.
* If you have a username of some sort, the `:id` in the above should be said username
* `/users/self` and `/users/:id` should use the same controller action and view.

#### Insane Mode

* `post.comments.count` should currently return a count of just the comments left directly on the post. Make a method on a post that returns a count of all the comments directly on the post plus any of the nested comments on those comments. Comments.
* Users should also be able to comment on other user profiles
* Implement tagging (tags should have many links and links should have many tags)
