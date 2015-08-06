class Comment < ActiveRecord::Base

  belongs_to :user
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
  belongs_to :root, :polymorphic => true

  before_save :set_root

  # Finds the root element of a threaded comment tree by
  # walking up the tree until it hits something that
  # isn't a comment FIXME: This is _screwed_
  def root_element
    this_commentable = self.commentable
    while this_commentable.is_a? Comment
      this_commentable = this_commentable.commentable
    end
    this_commentable
  end

  def set_root
    if commentable.is_a?(Comment) && commentable.root_id && commentable.root_type
      self.root_id = commentable.root_id
      self.root_type = commentable.root_type
      # This next block can likely be removed. FIXME
    elsif commentable.is_a?(Comment)
      self.root_id = root_element.id
      self.root_type = root_element.class.to_s
    else
      self.root_id = commentable.id
      self.root_type = commentable.class.to_s
    end
  end


end
