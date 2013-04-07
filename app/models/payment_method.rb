class PaymentMethod < ActiveRecord::Base
  has_many :payment
  attr_accessible :active, :name, :sortOrder
  
  after_initialize :init
  
  def init
    self.active = true if self.active.nil?
    self.sortOrder = PaymentMethod.count if self.sortOrder.nil?
  end
end
