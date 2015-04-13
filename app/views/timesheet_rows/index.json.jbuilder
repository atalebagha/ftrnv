json.array!(@timesheet_rows) do |timesheet_row|
  json.extract! timesheet_row, :id, :timesheet_id, :type, :hours, :days
  json.url timesheet_row_url(timesheet_row, format: :json)
end
