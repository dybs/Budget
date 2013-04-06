class CreatePaymentCategoryLinks < ActiveRecord::Migration
  def change
    create_table :payment_category_links do |t|
      t.datetime :modified
      t.references :paymentCategory
      t.references :payment

      t.timestamps
    end
    add_index :payment_category_links, :paymentCategory_id
    add_index :payment_category_links, :payment_id
  end
end
