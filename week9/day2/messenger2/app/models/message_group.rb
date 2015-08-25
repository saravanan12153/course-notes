class MessageGroup < ActiveRecord::Base

  has_many :groupings
  has_many :messages, :through => :groupings


  validates_presence_of :title



  def as_json(_arg)
    {
      message_group: {:title => self.title},
      messages: messages.to_json
    }
  end

end
