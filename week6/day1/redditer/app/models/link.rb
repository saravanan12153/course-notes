class Link < ActiveRecord::Base

  belongs_to :user
  belongs_to :subreddit
  has_many :votes
  has_many :comments, :as => :commentable
  has_many :threaded_comments, :as => :root, :class_name => Comment
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings

  def vote(value, user)
    self.votes << Vote.new(:value => value, :user => user)
  end

  def link_url
    self.url
  end

end
