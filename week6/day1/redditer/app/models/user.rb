class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :login

  has_many :links
  has_many :votes
  has_many :comments

  has_many :self_comments, :as => :commentable, :class_name => Comment
  has_many :threaded_comments, :as => :root, :class_name => Comment

  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_hash).first
    end
  end

  def upvoted?(link)
    if vote(link) && vote(link).value == 1
      true
    else
      false
    end
  end

  def downvoted?(link)
    vote(link) && vote(link).value == -1
  end

  def voted?(link)
    vote(link)
  end

  def vote(link)
    self.votes.where(:link_id => link.id).first
  end

end
