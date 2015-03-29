json.array!(@contracts) do |contract|
  json.extract! contract, :id, :reference, :title, :start, :length, :vacationdays, :holidays, :visadays, :employeeid, :salary, :housing, :car, :project_id, :position
  json.url contract_url(contract, format: :json)
end
