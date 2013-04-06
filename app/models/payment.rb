class Payment < ActiveRecord::Base
  belongs_to :paymentMethod
  has_many :paymentCategories, :through => :paymentCategoryLink
  attr_accessible :amount, :description, :modified, :purchaseDate
  
  after_initialize :defaults
  
  def defaults
    self.purchaseDate = Time.now if self.purchaseDate.nil?
  end
end
