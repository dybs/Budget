class PaymentCategoryController < ApplicationController
  def index
    @paymentCategories = PaymentCategory.all.sort_by {|c| c.sortOrder}  
  end

  def new
    # Render default new template.
  end

  def edit
    @category = PaymentCategory.find params[:id]
  end
  
  def update
    @category = PaymentCategory.find params[:id]
    @category.update_attributes!(params[:category])
    flash[:notice] = "'#{@category.name}' has been updated"
    redirect_to payment_category_index_path
  end
end
