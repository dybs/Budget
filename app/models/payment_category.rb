class PaymentCategory < ActiveRecord::Base
  has_many :paymentCategoryLink
  has_many :payment, :through => :paymentCategoryLink
  attr_accessible :active, :name, :sortOrder
  
  after_initialize :init
  
  def init
    self.active = true if self.active.nil?
    self.sortOrder = PaymentCategory.count if self.sortOrder.nil?
  end
end
