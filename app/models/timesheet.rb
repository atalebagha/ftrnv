class Timesheet < ActiveRecord::Base
  has_many :timesheet_rows
end
