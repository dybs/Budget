class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.date :purchaseDate
      t.text :description
      t.date :modified
      t.references :paymentMethod

      t.timestamps
    end
    add_index :payments, :paymentMethod_id
  end
end
