# Week 8 Lab: Amazonian

## Description

This will be the second group project of class. Each of you were randomly selected a partner and the two of you will be building this together.

I've created a Rails repo for each pair [in the organizational repo](https://github.com/tiy-indianapolis-ror-june2015).

Here's how I suggest you work together:

* Each of you forks the primary repo.
* Do your work in branches.
* Send that branch as a pull request to the primary repo.
* Important note: The _other team member_ must approve and merge the pull request.
* Important tip: Pull down changes from the primary repo _frequently_ to avoid unnecessary merge conflicts.


## Project Description
ecommerce platform with Stripe, inventory, and a shopping cart


## Objectives

### Learning Objectives

After completing this assignment, you should…

* Understand the technical challenges in accepting moneys online
* Integrate with external APIs



### Performance Objectives

After completing this assignment, you be able to effectively use

* Stripe
* Payola engine
* Rails Admin
* Friendly SEO Ids and Page Titles



## Details

### Deliverables

* A repo containing at least:
  * Seeded Products
  * Rails Admin
  * Stripe purchasing with Stripe Checkout
* Stripe should be in test mode

### Requirements

* a Rails app, live on Heroku
* a layout that looks "not-embarassing"
* a checkout process with a shopping cart, shipping, and billing information



## Normal Mode

Your products are listed on the homepage, and can be added to a cart.  

Your cart will list the items in the cart; adding a product to the cart again will increase the quantity, rather than adding another cart item. You should be able to edit the quantity and should be able to delete a cart item.

Your checkout process should be secure, and use Stripe Checkout -- the payola checkout is recommended.

Use Rails Admin for administration of your app.

## Hard Mode

Everything in Normal mode, plus:

1. Add a search engine that will let you search for items.

2. When you add an item to the cart, stay on that page and give visual feedback to the user by a) the cart icon in the header b) change the "Add to cart" button to be text with "Added to Cart [View Cart](#)"

3. Create a "receipt" page that you can email to them securely, viewable without sign in

4. Email the user a receipt, with a link to the receipt page, upon successful purchase. Use Mandrill on Heroku to send the emails.

## Nightmare Mode

1. Enhance the search engine to auto-complete results. Include a custom template on results that shows a thumbnail of the image as well as

2. On results of the search engine, allow them to query by price "< $50" and ">= $50"

3. Allow users to see their previous purchases

4. Enable "Paper Trail" to see how sales change over time and integrate with Payola.

5. Use a custom domain name

6. Secure Rails Admin with custom authentication (or devise for an Admin User)


## Notes

Passwords and Credit Cards should never be logged or stored in plain text.

You do not have to use the Payola gem, but it sure is nice.

Mandrill is a go-to emailing service on Heroku.

## Additional Resources

* [Payola Payments](https://github.com/peterkeen/payola)
* [Mandrill Addon](https://addons.heroku.com/mandrill)
