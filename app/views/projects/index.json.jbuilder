json.array!(@projects) do |project|
  json.extract! project, :id, :customer_id, :active, :name, :code, :description, :locked_version
  json.url project_url(project, format: :json)
end
