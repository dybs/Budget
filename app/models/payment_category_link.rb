class PaymentCategoryLink < ActiveRecord::Base
  belongs_to :paymentCategory
  belongs_to :payment
  attr_accessible :modified
end
