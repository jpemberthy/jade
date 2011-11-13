class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.float :amount
      t.string :user_name
      t.string :payment_method
      t.string :last_four

      t.timestamps
    end
  end
end
