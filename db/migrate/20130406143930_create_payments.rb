class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.text :description
      t.date :purchaseDate
      t.boolean :hasSalesTax
      t.references :paymentMethod
      t.references :paymentCategoryLink

      t.timestamps
    end
  end
end
