json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :summary, :author_id, :published
  json.url post_url(post, format: :json)
end
