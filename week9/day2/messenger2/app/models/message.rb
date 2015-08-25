class Message < ActiveRecord::Base

  has_many :groupings
  has_many :message_groups, :through => :groupings

  validates_presence_of :body
  validates_presence_of :title

  validates_uniqueness_of :title

end
