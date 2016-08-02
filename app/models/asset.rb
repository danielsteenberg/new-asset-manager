class Asset < ActiveRecord::Base
  belongs_to :employee
  belongs_to :category
  has_one :loan
end
