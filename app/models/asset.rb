class Asset < ActiveRecord::Base
  belongs_to :employee
  has_one :categories
end
