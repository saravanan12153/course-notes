class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :link

  after_save :update_vote_total

  validates_uniqueness_of :link_id, :scope => :user_id

  def update_vote_total
    link = self.link
    link.vote_total = link.votes.inject(0){|sum, x| sum + x.value}
    link.save!
  end

end
