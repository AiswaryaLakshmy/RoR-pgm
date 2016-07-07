class Customer < ActiveRecord::Base
	has_one :bank
  has_one :account_history, through: :bank
end
