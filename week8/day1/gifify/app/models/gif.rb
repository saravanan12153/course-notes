class Gif < ActiveRecord::Base

  belongs_to  :user
  has_many    :taggings
  has_many    :tags, :through => :taggings
  has_many    :votes

  attachment :file, content_type: "image/gif", extension: "gif"

  # validates :file, file_content_type: { allow: ["image/gif"], mode: :strict }

  validates :image_url, :format => {  :with => /\.gif\z/,
                                      :message => "is not a gif"
                                    }, :allow_blank => true
  validates_uniqueness_of :image_url, :allow_blank => true

  def tag_names
    tags.collect{|t| t.name}
  end

  def self.tagged_with(tag)
    Tag.find_by_name(tag).gifs
  end

end
