# Week 8, Day 3: APIs, Testing and S3.

## Description

Today, we learned about S3 and a bit more about testing.

Let's put those newly found skills to work.

## Objectives

* Testing in Rails
* Working in existing projects
* Refactoring
* Amazon Web Services
* Capybara
* Figaro/ENV

## Deliverables

* A pull request to your Week 7 Lab repo from branch `amazon` to `master`
* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `Week 8, Day 3 - Amazon - <YOUR_NAME>`
* A comment on your original Issue with a link to your live, updated Heroku app and the aforementioned PR
* Said issue assigned to me, @dummied

## Requirements

### Normal Mode

* During the afternoon, I'll be making comments/issues against your weekend lab. Fix said issues. I'm serious this time.
* If you haven't completed all the modes of the past three assignments (Week 8, Day 1; Week 8, Day 2 and the Week 7 Lab), keep working on them.
* Add tests for your models using `shoulda`
* Refactor your controllers to move methods into the models.
* Make sure you have tests for them.
* Get `capybara` and `poltergeist` installed.
* Switch the refile storage to use Amazon S3 instead of Postgres.
* Use figaro to manage your AWS credentials. IMPORTANT: DO NOT ADD CREDENTIALS TO YOUR GIT REPO


### Hard Mode

* Write an integration test for file upload
* Add the ability for a user to edit the tags of their photos or delete a photo of their own (nobody else's)

### Nightmare Mode

* Do that last item of hard mode without a page refresh
* Add integration tests for voting, tag views and user views
