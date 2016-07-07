class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
    	t.belongs_to :customer, index: true
      t.string :account_number
      t.timestamps null: false
    end
  end
end
