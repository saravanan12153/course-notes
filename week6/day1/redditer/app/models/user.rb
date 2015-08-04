class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :links
  has_many :votes
  has_many :comments

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
