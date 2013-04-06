class PaymentMethod < ActiveRecord::Base
  has_many :payment
  attr_accessible :active, :name, :sortOrder
end
