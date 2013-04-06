class PaymentMethod < ActiveRecord::Base
  has_many :payments
  attr_accessible :active, :name, :sortOrder
  
  after_initialize :defaults
  
  def defaults
    self.active = true if self.active.nil?
    # default sort order to the last method.    
    self.sortOrder = PaymentMethods.count is self.sortOrder.nil?
  end
end
