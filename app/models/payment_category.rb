class PaymentCategory < ActiveRecord::Base
  has_many :payment, :through => :paymentCategoryLink
  attr_accessible :active, :name, :sortOrder
end
