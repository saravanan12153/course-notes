class PostsController < ApplicationController

  def index
    @posts = Post.all
    @title = "All the great posts"
    @subheading = "All the news that's fit to print"
  end

  def show
    @post = Post.find(params[:id].to_i)
    @title = @post.title
    @subheading = @post.summary
  end

  def about
    @title = "About"
    @subheading = "All about that bass"
  end


end
