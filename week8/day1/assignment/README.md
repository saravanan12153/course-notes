# Week 8, Day 1: Now, with uploads!

## Description

As we learned in lecture today (hopefully), file uploading and image handling can be a bit ... tricky ... especially when dealing with AJAX-based applications.

So, let's give it a whirl.

## Objectives

* File upload management
* More AJAX cycles
* Handling two different things at a model level

## Deliverables

* A pull request to your Week 7 Lab repo from branch `upload` to `master`
* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 8, Day 1 - Uploads - <YOUR_NAME>`
* A comment on your original Issue with a link to your live, updated Heroku app and the aforementioned PR
* Said issue assigned to me, @dummied

## Requirements

### Normal Mode

* During the afternoon, I'll be making comments/issues against your weekend lab (aside: Get something up there for me to review). Fix said issues.
* Make it so I can upload a gif file _or_ just include an image url. And everything still works.
* For normal mode, a full page refresh is allowed.
* I'd recommend using refile (which I used in today's sample code), but feel free to use another solution if it floats yer boat and finds yer lost remote.
* Use refile-postgres to store the images.

### Hard Mode

* OK. No more page refresh.
* Validate that the file is a gif.
* Properly handle file type validation errors.

### Nightmare Mode

* Use Amazon S3 instead of refile-postgres
