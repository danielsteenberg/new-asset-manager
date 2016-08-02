class Loan < ActiveRecord::Base
	def status_select
		@status_select = ["Loaned", "Stolen", "Returned"]
	end
end
