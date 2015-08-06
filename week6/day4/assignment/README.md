# Microblogging Social Network (Twitter)

## Description

In addition to making Twitter, this will be our first group project of class. Each of you were randomly selected a partner and the two of you will be building this together.

I've created a Rails repo for each pair [in the organizational repo](https://github.com/tiy-indianapolis-ror-june2015).

Here's how I suggest you work together:

* Each of you forks the primary repo.
* Do your work in branches.
* Send that branch as a pull request to the primary repo.
* Important note: The _other team member_ must approve and merge the pull request.
* Important tip: Pull down changes from the primary repo _frequently_ to avoid unnecessary merge conflicts.

As you'll discover, working with another person is the trickiest part of this assignment.

## Objectives

### Learning Objectives

After completing this assignment, you should…

* Understand gems and their place in Rails developmeny
* Understand Relationships between models
* Understand Personalization
* Understand Authentication
* Understand Pagination


### Performance Objectives

After completing this assignment, you be able to effectively use

* authentication, sessions, and `current_user` (aka `devise`, preferably ... but feel free to roll yer own)
* `bootstrap_sass`
* `acts_as_follower`
* `kaminari`
* `wicked` wizards
* Validations
* Controllers



## Details

### Deliverables

* A repo containing at least:
  * a user model
  * a post model that users can write
  * a follow model
  * a signup wizard
* A live Heroku site
* A closed issue on the class assignment repo from each member of the team outlining the work they did on the project and a link to their forked repo.

### Requirements



## Normal Mode

* Users can signup, and sign in
* User can follow other users
* User can see posts from [User + Friends] in their Timeline
* User can Post posts
* Posts should be no more than 170 characters long
* User can unfollow a person
* Site should look nice
* Posts should be paginated
* Data should be seeded (use `faker`) with _at least_ 1000 toots and 100 users
* Get live and up and working on Heroku


## Hard Mode

* User can view a profile (/users/dummied)
* Users can block users for being a-holes
* Users can search for posts
* People can put the URL of a picture in for their picture and it will be shown on their profile. Or even better, use Identicons (https://en.wikipedia.org/wiki/Identicon). You can have another site create them (https://github.com/cupcake/sigil) or make them yourself (https://rubygems.org/gems/identicon).

## Nightmare mode

* Hashtag support, using something other than `#`. If a cheep contains `^string`, that becomes a "tag" and you can click it to see other chirps tagged with that.


## Notes

* When logged in, the root URL should show the messages from all the people you follow.
* People can post "messages," "cheeps," or whatever you want to call them. They're tweets, but please don't call them that.
* Getting the list of messages for You + people you follow is tricky'ish. Think of it like this:

```ruby
class Post
  def self.timeline(user)
    following_ids = user.all_following.map(&:id)
    all_ids= following_ids << user.id
    Post.where(user_id: all_ids).order("created_at DESC")
  end
end
```

## Additional Resources

* [Acts As Follower](https://github.com/tcocca/acts_as_follower)
