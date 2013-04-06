class Payment < ActiveRecord::Base
  belongs_to :paymentMethod
  has_many :paymentCategories, :through => :paymentCategoryLink
  attr_accessible :amount, :description, :modified, :purchaseDate
end
