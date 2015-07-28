class Post < ActiveRecord::Base

  validates_presence_of :title, :body

  has_many :comments
  belongs_to :author, :class_name => User

  has_many :commenters,
           :through => :comments,
           :source => :user

end
