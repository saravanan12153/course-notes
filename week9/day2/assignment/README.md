# Week 9, Day 2: There's an I in API

## Description

Hi. I'm Jacques, a frontend developer working with you on the Notemeister 5000 application.

![](http://cdni.wired.co.uk/620x413/g_j/hipster.jpg)

I have the frontend all laid to use your API. Here's what I'm expecting (note, these values are examples, they should be the values of the actual note):

`GET /api/notes`

```json
{
  "notes" : [
    {
      "title" : "My awesome post",
      "body" : "My awesome body of a post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "awesome" },
        { "name" : "funny" },
        { "name" : "spiffy" }
      ]
    },
    {
      "title" : "My awesome second post",
      "body" : "My awesome body of a second post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "not_so_awesome" },
        { "name" : "not_funny" },
        { "name" : "not_at_all_spiffy" }
      ]
    }
  ]
}
```

`POST /api/notes -d {"title" : "My created post", "body" : "My created body", "tags" : "api, machine, first"}`

```json
{
  "note" : {
    "title" : "My created post",
    "body" : "My created body",
    "created_at" : "<timestamp>",
    "updated_at" : "<timestamp>",
    "tags" : [
      { "name" : "api" },
      { "name" : "machine" },
      { "name" : "first" }
    ]
  }
}
```

If I try to create a note without a title or body, I should get back a JSON-formatted error message and a status code of `400`

`GET /api/notes/tag/funny`

```json
{
  "tag" : {
    "name" : "funny"
  },
  "notes" : [
    {
      "title" : "My awesome post",
      "body" : "My awesome body of a post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "awesome" },
        { "name" : "funny" },
        { "name" : "spiffy" }
      ]
    },
    {
      "title" : "My awesome second post",
      "body" : "My awesome body of a second post",
      "created_at" : "<timestamp>",
      "updated_at" : "<timestamp>",
      "tags" : [
        { "name" : "not_so_awesome" },
        { "name" : "funny" },
        { "name" : "not_at_all_spiffy" }
      ]
    }
  ]
}
```

## Deliverables

* An issue in the assignments repo assigned to you and created via the GitHub API using `curl`
* A application hosted on heroku that responds with the correct things at those endpoints, built using `rails-api`
* A seeded database that includes at least five notes with three (different) tags each
* A closed issue with a comment that contains a link to your application repo and the heroku instance and assigned to me. This should also be done via the command line.
* A second comment on that issue (created however you wish) that includes a link to a gist of the curl commands used to create and close the issue.

## Requirements

### Normal Mode

* Help Jacques out and create the API he needs.
* Open, comment on and close the assignment issue via the GitHub API and curl

### Hard Mode

Jacques had some nice-to-have requests.

* I'd like to be able to create a simple user authenticatable and identifiable simply by an api_token.
  Something like:
  `POST /api/users/create` {"email" : "whatever@example.com"}`

  ```json
    {
      "user" : {
        "email" : "whatever@example.com",
        "api_token" : "<token>"
      }
    }
  ```

  On later requests, if I include the api_token parameter, the note belongs to that associated user. And if I make requests to get the list of notes, it should return just that user's notes.

  * I'd like to be able to edit notes. If we have a sense of users, a user should only be able to edit their own notes.

    `PUT /api/notes/:id -d {data}`
  * Ensure Jacques can access this API using CORS.


### Nightmare Mode

* Use ActiveModelSerializers for the above.
* Notes should have comments. They should be included in the API response for notes#show but have their own create actions/controller

## Additional resources

* [Rails API](https://github.com/rails-api/rails-api)
* [GitHub API curl walkthrough](https://gist.github.com/caspyin/2288960)
* [GitHub API Docs](https://developer.github.com/v3/)
* [Active Model Serializers](https://github.com/rails-api/active_model_serializers)
