# Week 4, Day 1: How the web works

# What happens when you type www.theironyard.com

1. A chain of DNS class happen to find the IP address associated with that address
2. A request is sent to that IP address
3. A web server (Apache, Nginx) takes the request, sees if it can handle it directly and if so, returns a response
4. If it _can't_, it passes the request onto an application server.
5. The application server has your application code loaded in memory and passes the request on to your app
6. Your app (let's say Rails), parses the request to a particular _route_ which maps it to a controller action
7. The controller then does something with the request:
	* Redirects it
	* Sends an error status code
	* Renders a view
8. This response is passed on to the app server (along with a _status code_)
9. The app server returns it to the web server
10. The web server returns it to your browser
11. Your browser renders the page
12. Your browser then requests all the images and other assets
13. And this process repeats

---

# This all happens in _milliseconds_

#### Like, literally, fractions of a second

###### _(And a some point, your job will be to make this all take slightly fewer fractions of a second)_

---

# Everything is a URL

# A URL is everything

###### _(URLs rule the web)_

---

# http://www.theironyard.com/locations/indianapolis

---

* **http://** This is the protocol. You'll also find `https://` (HTTP over SSL)
* **www** Subdomain. Through DNS, this can go to an entirely different server
* **theironyard.com** Hostname and TLD. The core address in DNS
* **/locations/indianapolis** The path of the request

---

# How to request URLs

* **GET:** What you're probably thinking of when you type an address in a browser
* **POST:** When you fill out a form and send data to the server

---

# Esoteric requests

_These are all supported, but are typically just piled onto `POST` since not all browsers (or servers) support them._

* **PUT:** Update or create this resource
* **DELETE:** Delete this resource
* **PATCH:** Partially update this resource

Also:

* **HEAD:** Same as a `GET`, but just the headers

---

# Wait. Headers?

Every request returns not just a body, but a header filled with useful meta information about the response.

Also, every request comes with its own header.

---

`curl -I http://theironyard.com/locations/indianapolis/`

```
HTTP/1.1 200 OK
Server: GitHub.com
Date: Mon, 20 Jul 2015 03:31:14 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 14722
Last-Modified: Fri, 17 Jul 2015 16:02:50 GMT
Access-Control-Allow-Origin: *
Expires: Mon, 20 Jul 2015 03:41:14 GMT
Cache-Control: max-age=600
Accept-Ranges: bytes
```

---

# (Notable) HTTP Status Codes

* **200:** Everything's A-OK. Here ya go.
* **301:** Moved permanently. Redirect.
* **304:** Not modified. Use your in-browser cache.
* **401:** Unauthorized
* **403:** Forbidden
* **404:** Not found
* **500:** Internal Server Error
* **418:** I'm a teapot

[More status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

---

# Sinatra

[Sinatra](http://www.sinatrarb.com) is a lightweight application framework written in Ruby.

You can find documentation above, but here's a quick example:

```
require 'sinatra'

get '/hello/:id' do
  "<h1>Hi, #{params[:id]}!</h1>"
end

get '/hello' do
  "<h1>Hi there!</h1>"
end

get '/current_time' do
  "<h1>It is currently #{Time.now}.</h1>"
end

get '/template' do
  players = ["George Hill", "Paul George", "Roy Hibbert", "Rodney Stuckey"]
  posts = 3.times.collect do |num|
    {
      :title => "Post ##{num}",
      :summary => "Lorem ipsum",
      :author => "Truman Capote"
    }
  end
  erb :index, :locals => {:players => players, :posts => posts}
end

get '/template2' do
  players = ["Reggie Miller", "David West", "Lance Stephenson", "Ron Atrest"]
  posts = 3.times.collect do |num|
    {
      :title => "Post ##{num*5}",
      :summary => "Lorem ipsum, yo",
      :author => "Harper Lee"
    }
  end
  erb :index, :locals => {:players => players, :posts => posts}
end
```

---

# ERB (Embedded Ruby)

ERB allows us to stick Ruby code in the middle of HTML or other text.

In general, the `<% %>` syntax executes Ruby code, but does not output anything. `<%= %>` will output the result of the evaluated Ruby code.

Here's an example:

```
<ul>
  <% players.each do |player| %>
    <li><%= player %></li>
  <% end %>
</ul>

<% posts.each do |post| %>
  <article>
    <h2><%= post[:title] %></h2>
    <p><%= post[:summary] %></p>
    <p class="author"><%= post[:author] %></p>
  </article>
<% end %>
```
