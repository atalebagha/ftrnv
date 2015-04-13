json.array!(@visas) do |visa|
  json.extract! visa, :id, :type, :start, :length, :stay, :user_id
  json.url visa_url(visa, format: :json)
end
