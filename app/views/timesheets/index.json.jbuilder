json.array!(@timesheets) do |timesheet|
  json.extract! timesheet, :id, :project_id, :month, :year, :description, :committed, :committed_at, :lock_version, :start_day_cache, :auto_sort
  json.url timesheet_url(timesheet, format: :json)
end
