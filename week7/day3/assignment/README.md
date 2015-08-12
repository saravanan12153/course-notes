# Week 7, Day 3: Twitter on AJAX

## Description

Today, we're going to take our Twitter clones and make some actions - follow/unfollow and posting a new toot - happen via AJAX instead of full page requests.

## Objectives

* Understand the AJAX request cycle
* Use more JavaScript to do actual useful things
* Understand Rails' `respond_to`

## Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 7, Day 3 - Twitter on AJAX - <YOUR_NAME>`.
* A pull request on _your personal fork of the team Twitter clone_ from `remote` to `master`
* A comment on that issue when you're done that has the link to aforementioned PR
* Said issue closed and assigned to me @dummied

## Details

### Normal Mode

* Make follows happen without a page refresh using AJAX and `:remote => true`
  * After I click follow, the button should change to unfollow.
* Make unfollows happen without a page refresh using AJAX and `:remote => true`
  * After I click unfollow, the button should change to follow.
* Make sure I can click unfollow/follow/unfollow right after the other and everything still works

### Hard Mode

* When I click a link/button to make a new post, I should get a modal window with the post form.
* When I submit the form, the modal should close and my new "toot" should appear in the top of the list
* A flash message should display letting me know that my "cheep" posted.

### Nightmare Mode

* When I click a link to login (aside: your front page at this point for un-logged-in users should be a list of all "chirps"), I should get a modal for the log in and once logged in, the nav should reflect a logged-in user and the modal should disappear. Also, a flash message telling me I've logged in.
* Handle sign out through AJAX as well, doing essentially the opposite of the above (change the nav to logged out and display a flash message)
