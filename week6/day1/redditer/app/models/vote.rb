class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :link

  validates_uniqueness_of :link_id, :scope => :user_id


end
