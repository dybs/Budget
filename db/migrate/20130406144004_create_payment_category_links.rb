class CreatePaymentCategoryLinks < ActiveRecord::Migration
  def change
    create_table :payment_category_links do |t|
      t.references :payment
      t.references :paymentCategory

      t.timestamps
    end
  end
end
