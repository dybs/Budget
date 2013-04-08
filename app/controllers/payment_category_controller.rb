class PaymentCategoryController < ApplicationController
  def index
    @paymentCategories = PaymentCategory.all.sort_by {|c| c.sortOrder}  
  end

  def new
  end

  def edit
  end
end
