class PaymentCategory < ActiveRecord::Base
  has_many :payments, :through => :paymentCategoryLink
  attr_accessible :active, :name, :sortOrder
  
  after_initialize :defaults
  
  def defaults
    self.active = true if self.active.nil?
    # default sort order to the last category.
    self.sortOrder = PaymentCategory.count if self.sortOrder.nil?
  end
end
