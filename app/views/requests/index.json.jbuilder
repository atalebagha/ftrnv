json.array!(@requests) do |request|
  json.extract! request, :id, :type_id, :contract_id, :start, :days, :vacationdays, :exitdays, :otherdays, :actualreturn, :stamp
  json.url request_url(request, format: :json)
end
