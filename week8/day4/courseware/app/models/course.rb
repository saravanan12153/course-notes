class Course < ActiveRecord::Base

  belongs_to :author, :class_name => "User"

  validates_presence_of :price
  validates_presence_of :author

  attachment :cover

  has_permalink(:title, true)

  alias_attribute :name, :title

  include Payola::Sellable

end
