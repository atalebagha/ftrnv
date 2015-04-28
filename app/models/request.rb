class Request < ActiveRecord::Base
	belongs_to :user
  belongs_to :type

  validates :start, :vacationdays, :exitdays, :otherdays, :user_id, presence: true
  validates :vacationdays, :exitdays, :otherdays, :days, numericality: { only_integer: true }
 end


