class AddAssociations < ActiveRecord::Migration
  def change
    add_index :payments, :paymentMethod_id
    
    add_index :payment_category_links, :payment_id
    add_index :payment_category_links, :paymentCategory_id
  end  
end
