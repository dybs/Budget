class Payment < ActiveRecord::Base
  belongs_to :paymentMethod
  has_many :paymentCategoryLink
  has_many :paymentCategories, :through => :paymentCategoryLink
  attr_accessible :amount, :description, :hasSalesTax, :purchaseDate
  
  after_initialize :init
  
  def init
    self.hasSalesTax = true if self.hasSalesTax.nil?
    self.purchaseDate = Time.now if self.purchaseDate.nil?
  end
end
