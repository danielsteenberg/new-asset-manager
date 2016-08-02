class Loan < ActiveRecord::Base
	belongs_to :asset
	enum status_types: [:Loaned, :Overdue, :Returned]
end
