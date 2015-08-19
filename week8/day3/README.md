# Week 8, Day 3

Today, we talked a bunch more about testing, specifically integration testing.

We also talked about Amazon's S3 service and refile.

Which brought us to a nice long chat about not storing credentials in git - and certainly not sending them up to GitHub.

We used the `figaro` gem like so to store those locally and sync them with Heroku:

* Added `figaro` to our Gemfile.
* `bundle; bundle exec figaro install`
* Added credential keys to our `config/application.yml`
* Once we were ready to deploy to heroku, we ran `figaro heroku:set -e production`
