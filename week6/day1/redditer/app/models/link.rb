class Link < ActiveRecord::Base

  belongs_to :user
  belongs_to :subreddit
  has_many :votes
  has_many :comments, :as => :commentable

  def vote(value, user)
    self.votes << Vote.new(:value => value, :user => user)
  end

  def link_url
    self.url
  end

end
