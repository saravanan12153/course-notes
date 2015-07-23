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
            :title      => "This is our first post.",
            :body       => "Bushwick aesthetic flexitarian McSweeney's hella, tattooed brunch swag. Tattooed street art brunch, wayfarers trust fund Thundercats meggings Odd Future swag. American Apparel vinyl iPhone selfies. Asymmetrical four dollar toast Kickstarter flexitarian. PBR distillery bitters, pork belly pickled chambray retro kitsch. American Apparel roof party cold-pressed, letterpress Portland bicycle rights tilde four loko mumblecore chia XOXO selvage. Irony fixie plaid four loko skateboard seitan.

Stumptown fixie mustache, chillwave deep v ethical American Apparel cray. Actually deep v cornhole umami, squid mumblecore XOXO VHS +1 cronut. Neutra drinking vinegar +1 farm-to-table. Intelligentsia scenester flexitarian taxidermy ugh McSweeney's. Try-hard farm-to-table kale chips polaroid, shabby chic XOXO bitters pug post-ironic. Fixie readymade locavore, Bushwick slow-carb iPhone 90's photo booth taxidermy Odd Future Pitchfork vegan. Slow-carb mumblecore ugh, pickled single-origin coffee blog bicycle rights Pinterest quinoa farm-to-table.

Kale chips next level semiotics brunch 3 wolf moon tilde, chambray farm-to-table pour-over. Deep v semiotics YOLO, beard kogi scenester 8-bit listicle umami Portland vinyl cronut. Synth YOLO try-hard biodiesel, flannel Helvetica gastropub authentic 8-bit post-ironic. Pour-over messenger bag plaid, gentrify artisan chambray dreamcatcher scenester VHS banjo narwhal bespoke Truffaut bitters retro. Tilde keytar dreamcatcher Etsy roof party Blue Bottle mumblecore, Kickstarter pop-up sustainable. Retro next level dreamcatcher +1. Asymmetrical squid four loko, cray heirloom YOLO single-origin coffee.

Skateboard swag four dollar toast pour-over. PBR&B Marfa leggings, actually fashion axe pug migas Truffaut heirloom cliche Williamsburg occupy Bushwick. Flexitarian fashion axe pug YOLO lo-fi jean shorts chillwave, seitan paleo Thundercats. Twee 8-bit before they sold out lumbersexual. Yr post-ironic gastropub heirloom sriracha Bushwick, wolf wayfarers. PBR&B hella swag seitan trust fund flexitarian. Kickstarter tousled PBR&B keffiyeh disrupt, pork belly raw denim High Life mlkshk.",
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
    all.select{|post| post.id == id}.first
  end

end
