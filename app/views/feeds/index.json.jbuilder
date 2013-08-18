json.array!(@feeds) do |feed|
  json.extract! feed, :name, :url, :description
  json.url feed_url(feed, format: :json)
end
