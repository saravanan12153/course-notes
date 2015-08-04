# Week 6, Day 2: Still Moar Reddit

## Description

Let's continue working in Reddit, adding more features and continuing to add polish.

### Learning Objectives

* Nested routes/resources
* Refactoring
* More heroku deployments
* Polymorphic relationships

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 6, Day 2 - still moar reddit - <YOUR_NAME>`.
* A closed pull request (from `stillmoar` to `master`) containing today's work
* A comment on that issue when you're done that has the link to the _updated_ (not new) app on heroku and a link to the aforementioned pull request
* Said issue closed and assigned to me @dummied

### Requirements

#### Normal Mode

* In the course of yesterday, I made code comments/issues in your weekend lab repository. Fix those. Ideally, close those issues using your git commit message.
* If you haven't completed _everything_ in the weekend Reddit lab, keep working on it.
* If something in today's (or yesterday's) lecture seemed like a better idea than what you had done, refactor your code to improve it.

#### Hard Mode

* Add comments to links. They should belong to a user and require a user to create one.
* Show the comments, but not the form, to non-logged-in users.
* Make it so there's a link to specific comment (for sharing/shaming)

#### Nightmare Mode

* The above should use nested resources and routes
* Comments should be _threaded_ (as in: you can comment on a comment on a comment ... etc.)
* Comments should also display as threaded

#### Insane Mode

* Create user profiles. Said profile should include the user's links (or posts), their comments and a bio that they can edit.
* Going to `/users/self` should show my own bio and give me a link to edit the bio and such
* Going to `/users/:id` should display a specific user profile, but not allow me to edit it.
* If you have a username of some sort, the `:id` in the above should be said username
* `/users/self` and `/users/:id` should use the same controller action and view.
