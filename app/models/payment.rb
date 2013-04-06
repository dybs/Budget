class Payment < ActiveRecord::Base
  belongs_to :paymentMethod
  has_many :paymentCategory, :through => :paymentCategoryLink
  attr_accessible :amount, :description, :hasSalesTax, :purchaseDate
end
