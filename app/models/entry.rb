class Entry < ActiveRecord::Base
	belongs_to :visa
	belongs_to :user
end
