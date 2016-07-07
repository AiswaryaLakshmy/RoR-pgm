class Bank < ActiveRecord::Base
	belongs_to :customer
  has_one :account_history
end
