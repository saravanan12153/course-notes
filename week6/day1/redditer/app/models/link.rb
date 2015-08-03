class Link < ActiveRecord::Base

  belongs_to :user
  belongs_to :subreddit
  has_many :votes

end
