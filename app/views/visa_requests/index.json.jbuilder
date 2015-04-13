json.array!(@visa_requests) do |visa_request|
  json.extract! visa_request, :id, :code, :date, :purpose, :project_id, :user_id, :description
  json.url visa_request_url(visa_request, format: :json)
end
