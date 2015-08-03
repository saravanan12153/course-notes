json.array!(@links) do |link|
  json.extract! link, :id, :url, :summary, :title, :user_id, :subreddit_id
  json.url link_url(link, format: :json)
end
