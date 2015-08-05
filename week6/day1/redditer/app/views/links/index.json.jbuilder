json.array!(@links) do |link|
  json.extract! link, :id, :summary, :title
  json.url link_url(link, format: :json)
  json.link_url link_redirect_url(link)
end
#
# @links.collect do |link|
#   our_object_hash = {}
#   [:id, :summary, :title].each do |method|
#     our_object_hash[method] = link.send(method)
#   end
#   our_object_hash[:url] = link_url(link, format: :json)
#   our_object_hash[:link_url] = link_redirect_url(link)
#   our_object_hash
# end.to_json
