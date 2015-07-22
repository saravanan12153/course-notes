# The Asset Pipeline & You

## What we mean by "assets"

* CSS
* Javascript
* Images
* PDFs, etc.
* Generally, non-dynamic elements

## The old days

* Back in the day, we managed our own assets, generally in the `public` folder.
* You can still do this today, but due to the rise in frontend complexity and the handiness of preprocessors, Rails added the asset pipeline in version 3.1 (August 2011)
* This makes CSS and JavaScript first-class citizens
* Whatever that means ...

```
$ rails g controller welcome
      create  app/controllers/welcome_controller.rb
      invoke  erb
      create    app/views/welcome
      invoke  test_unit
      create    test/controllers/welcome_controller_test.rb
      invoke  helper
      create    app/helpers/welcome_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/welcome.coffee
      invoke    scss
      create      app/assets/stylesheets/welcome.scss
```

# Javascript

```
app
	|_ assets
		|_ images
		|_ javascripts
			|_ application.js
			|_ welcome.coffee
		|_ stylesheets
```

# Wait. `.coffee`? WTF?

* [CoffeeScript](http://coffeescript.org/): We're Rubyists. We like Ruby. JavaScript ain't Ruby, so let's make something that looks like Ruby, but compiles to Javascript.
* Throw in a bit of Python while we're at it

```coffeescript
# Assignment:
number   = 42
opposite = true

# Conditions:
number = -42 if opposite

# Functions:
square = (x) -> x * x

# Arrays:
list = [1, 2, 3, 4, 5]

# Objects:
math =
  root:   Math.sqrt
  square: square
  cube:   (x) -> x * square x

# Splats:
race = (winner, runners...) ->
  print winner, runners

# Existence:
alert "I knew it!" if elvis?

# Array comprehensions:
cubes = (math.cube num for num in list)
```

```javascript
var cubes, list, math, num, number, opposite, race, square,
  slice = [].slice;

number = 42;

opposite = true;

if (opposite) {
  number = -42;
}

square = function(x) {
  return x * x;
};

list = [1, 2, 3, 4, 5];

math = {
  root: Math.sqrt,
  square: square,
  cube: function(x) {
    return x * square(x);
  }
};

race = function() {
  var runners, winner;
  winner = arguments[0], runners = 2 <= arguments.length ? slice.call(arguments, 1) : [];
  return print(winner, runners);
};

if (typeof elvis !== "undefined" && elvis !== null) {
  alert("I knew it!");
}

cubes = (function() {
  var i, len, results;
  results = [];
  for (i = 0, len = list.length; i < len; i++) {
    num = list[i];
    results.push(math.cube(num));
  }
  return results;
})();
```

# CSS

```
app
	|_ assets
		|_ images
		|_ javascripts
		|_ stylesheets
			|_ application.css
			|_ welcome.scss
```

# Wait. `.scss`? WTF?

* [Sass](http://sass-lang.com/): We're programmers. We like variables and mixins and methods and stuff. Let's make something that lets us use those ... but compiles to regular old CSS.

```scss
$font-stack:    Helvetica, sans-serif;
$primary-color: #333;

body {
  font: 100% $font-stack;
  color: $primary-color;
}
```

```css
body {
  font: 100% Helvetica, sans-serif;
  color: #333;
}
```

`app/assets/javascripts/application.js`

```javascript
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
```

---

`app/assets/javascripts/welcome.coffee`

```coffeescript
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
```

---

`app/assets/stylesheets/application.css`

```css
/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or any plugin's vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any styles
 * defined in the other CSS/SCSS files in this directory. It is generally better to create a new
 * file per style scope.
 *
 *= require_tree .
 *= require_self
 */
```

---

`app/assets/stylesheets/welcome.scss`

```scss
// Place all the styles related to the welcome controller here.
// They will automatically be included in application.css.
// You can use Sass (SCSS) here: http://sass-lang.com/
```

---

# Images

Just dump 'em in there

```
app
	|_ images
		|_ whatever.jpg
		|_ whichever.gif
```

---

# Why do all this?

---

* **Encapsulation:** As your site gets sprawling across multiple controllers, you can separate the styles and javascripts that pertain to just that specific controller
* **Production-fying:** The asset pipeline will concantenate, minify and process all these files so they load fast in production.
* **Versioning:** Bust caches when a file changes
* **Goodies:** You also get some handy helpers in your views ...

---

```erb
<!DOCTYPE html>
<html>
<head>
  <title>Second Example of June 2015 Indy RoR</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
<body>

<%= yield %>

</body>
</html>
```

---

# Aside on turbolinks

* Makes pages load faster by not loading the _entire_ page
* Instead, it keeps the wrapper (essentially, the layout) and just swaps out the bits that changed
* It does this automatically
* It has been known to cause major headaches for some javascript libraries in particular

---

```erb
	<%= image_tag "whatever.jpg" %>
	<!-- Development -->
	<img src="/assets/whatever.jpg" />
	<!-- Production -->
	<img src="/assets/whatever-af27b6a414e6da00003503148be9b409.jpg" />
```

---

# You also get helpers in your (S)CSS

```scss
.button.checkable { background-image: url(image_path('tick.png')); }
/* .button.checkable { background-image: url(/assets/tick.png); }
```

---

# A few things to keep in mind

* These examples are kinda simple
* But, if you stick with using the pipeline, you don't need to worry about the URL for these assets changing when you deploy to production.

---

# Two non-asset view helpers

```erb
<%= link_to "Say Hi", namer_path(:name => "Billy") %>
<a href="/say_hi/Billy">Say Hi</a>
<%= link_to "Say Hi", namer_url(:name => "Billy") %>
<a href="http://localhost:3000/say_hi/Billy">Say Hi</a>
```

---

# Bootstrap

```html
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
```
