class CreatePaymentCategories < ActiveRecord::Migration
  def change
    create_table :payment_categories do |t|
      t.string :name
      t.boolean :active
      t.int :sortOrder

      t.timestamps
    end
  end
end
