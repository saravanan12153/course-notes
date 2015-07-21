# ModelViewController

![](http://cdn.gifbay.com/2013/11/break_it_down-98451.gif)

# Let's break it down

# Model

* Ruby classes
* That map to database tables
* An attr_accessor for each database column
* An extra step to "persist" or save the objects to the database

# View

* Templates.
* How your data is _displayed_.
* ERB, Haml, Slim, JSON, XML

# Controller

* The bridge between M & V
* Speaks HTTP
* Authorization, Authentication, and other stuff

# Today: Controllers Deep Dive

# Let's make one

`rails generate controller visitor`

```
      create  app/controllers/visitor_controller.rb
      invoke  erb
      create    app/views/visitor
      invoke  test_unit
      create    test/controllers/visitor_controller_test.rb
      invoke  helper
      create    app/helpers/visitor_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/visitor.coffee
      invoke    scss
      create      app/assets/stylesheets/visitor.scss

 ```

 ---

 app/controllers/visitor_controller.rb

 ```ruby
      class VisitorController < ApplicationController
	  end
```

---

# Current Status

* Our new controller has no actions
* Our controller has no routes mapped to it, so no URL will reach it

---

# Controller actions

```ruby
class VisitorController < ApplicationController

  def index
    @posts = [
      {:title => "Awesome post First", :summary => "This is my summary"},
      {:title => "Awesome post Second", :summary => "Another awesome summary"}
    ]
  end

end
```

---

# Our new action

* Will, by default, render a view located at `app/views/visitor/index.html.erb`
* `@posts` will be available in that view
* Still needs a route ...

---

`config/routes.rb`

```ruby
Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
```

---

# Whoa, that's a lot of comments

---

```ruby

Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'visitor#index'

end
```

---

# [fit] Now, `localhost:3000/` will hit our new controller action
## WOOT!

---

# Other route methods

```ruby
  # Example of regular route:
  get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
```

---

# The `params` hash

* Notice the `:id` in the previous slide?
* That (and any other ones) will be available in your controller as params[:id]

---

# [fit] A quick note about resources and CRUD

Rails is well-tuned for CRUD apps.

* **CRUD:** Create, Read, Update Delete

When we talk about `resources`, they're things that we expect to need to do at least a subset of the above.

---

# Resource routes

```ruby
  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :products

  # Example resource route with options:
  resources :products do
  	member do
 	 	get 'short'
  		post 'toggle'
 	end

  	collection do
  		get 'sold'
  	end
  end
```

---

# Resource routes

```ruby
  # Example resource route with sub-resources:
  resources :products do
  	resources :comments, :sales
  	resource :seller
  end

  # Example resource route with more complex sub-resources:
  resources :products do
  	resources :comments
  	resources :sales do
  		get 'recent', on: :collection
  	end
  end
```

---

# Resource Routes

```ruby
  # Example resource route with concerns:
  concern :toggleable do
  	post 'toggle'
  end
  resources :posts, concerns: :toggleable
  resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  namespace :admin do
  	# Directs /admin/products/* to Admin::ProductsController
  	# (app/controllers/admin/products_controller.rb)
  	resources :products
  end
```

---

# Rendering JSON/XML/Whatever

* Controllers don't have to just render HTML
* They can render plain ol' text
* They can render JSON
* They can render XML
* They can render _nothing_

---

# Rendering text from a controller

```ruby
def text_render
	render plain: "OK"
end
```

---

# But let's talk about that tomorrow ...
