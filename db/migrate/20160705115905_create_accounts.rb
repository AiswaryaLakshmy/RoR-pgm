class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.belongs_to :supplier, index: true, unique: true, foreign_key: true
    	t.string :account_number
      t.timestamps null: false
    end
  end
end
