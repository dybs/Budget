class PaymentCategoryLink < ActiveRecord::Base
  belongs_to :payment
  belongs_to :paymentCategory
  # attr_accessible :title, :body
end
