class PaymentMethod < ActiveRecord::Base
  has_many :payments
  attr_accessible :active, :name, :sortOrder
end
