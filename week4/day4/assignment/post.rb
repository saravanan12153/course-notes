class Post
  attr_accessor :id, :title, :body, :summary, :author, :created_at

  def initialize(hash)
    @id         = hash[:id]
    @title      = hash[:title]
    @body       = hash[:body]
    @summary    = hash[:summary]
    @author     = hash[:author]
    @created_at = hash[:created_at] || Time.now
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id         => 1,
            :title      => "FILL_ME_IN",
            :body       => "FILL_ME_IN",
            :summary    => "FILL_ME_IN",
            :author     => "FILL_ME_IN",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 2,
            :title      => "FILL_ME_IN",
            :body       => "FILL_ME_IN",
            :summary    => "FILL_ME_IN",
            :author     => "FILL_ME_IN",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 3,
            :title      => "FILL_ME_IN",
            :body       => "FILL_ME_IN",
            :summary    => "FILL_ME_IN",
            :author     => "FILL_ME_IN",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 4,
            :title      => "FILL_ME_IN",
            :body       => "FILL_ME_IN",
            :summary    => "FILL_ME_IN",
            :author     => "FILL_ME_IN",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 5,
            :title      => "FILL_ME_IN",
            :body       => "FILL_ME_IN",
            :summary    => "FILL_ME_IN",
            :author     => "FILL_ME_IN",
            :created_at => (1..10).to_a.sample.months.ago
          )
      ]
    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id}
  end

end
