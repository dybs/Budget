class Payment < ActiveRecord::Base
  belongs_to :paymentMethod
  has_many :paymentCategoryLink
  has_many :paymentCategories, :through => :paymentCategoryLink
  attr_accessible :amount, :description, :hasSalesTax, :purchaseDate
end
