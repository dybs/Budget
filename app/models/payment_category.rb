class PaymentCategory < ActiveRecord::Base
  has_many :payments, :through => :paymentCategoryLink
  attr_accessible :active, :name, :sortOrder
end
