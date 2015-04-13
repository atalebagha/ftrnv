json.array!(@clients) do |client|
  json.extract! client, :id, :name, :code, :active, :description, :lock_version
  json.url client_url(client, format: :json)
end
