class Grouping < ActiveRecord::Base

  belongs_to :message
  belongs_to :message_group

  validates_presence_of :message
  validates_presence_of :message_group

end
