json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :active, :lead_image
  json.url post_url(post, format: :json)
end
