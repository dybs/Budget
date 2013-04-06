class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.boolean :active
      t.int :sortOrder

      t.timestamps
    end
  end
end
