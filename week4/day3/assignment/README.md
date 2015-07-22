# Bootstrapping the Asset Pipeline

## Description

Let's make some new pages in our Rails app and link to them. Also: let's explore bootstrap and the asset pipeline a bit.

## Learning objectives

* Using `link_to`
* Using the asset pipeline a wee bit
* Exploring bootstrap
* Using views and layouts

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `4.3 - Bootstrapping Rails -- YOUR NAME`.
* A repository named `4.3-BootstrappingRails` containing at least a `README.md` file
* A Pull Request (PR) in your `4.3-BootstrappingRails` repo:
  * _from_ branch `dev`
  * _into_ branch master
* A comment on your original Issue with a link to your PR
* Said issue assigned to me, @dummied

### Requirements

* At least two controllers with one action each.
* The views between those views should use `link_to`
* Use bootstrap (using the CDN method below) to make it not look like default HTML rendering.
* The views should each have a local image, served via the asset pipeline and using `image_tag`

#### Bootstrap CDN method

Include the following the `<head>` of your documents:

```html
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
```

### Hard mode

* Have the image be in a sidebar, but use bootstrap to make the sidebar stack beneath at tablet and lower sizes
* Have your actions take parameters, and link to them with said parameters (like, say a name)

### Nightmare mode

* Use bootstrap from the asset pipeline instead of the CDN method (there might be a rubygem for this)
