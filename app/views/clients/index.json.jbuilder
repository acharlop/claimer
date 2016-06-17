json.array!(@clients) do |client|
  json.extract! client, :id, :first, :last
  json.url client_url(client, format: :json)
end
