class PaymentMethodController < ApplicationController
  def index
    @paymentMethods = PaymentMethod.all.sort_by {|m| m.sortOrder}    
  end

  def new
    # Render default new template.
  end

  def edit
    @paymentMethod = PaymentMethod.find params[:id]
  end
  
  def update
    @paymentMethod = PaymentMethod.find params[:id]
    @paymentMethod.update_attributes!(params[:paymentMethod])
    flash[:notice] = "'#{@paymentMethod.name}' has been updated"
    redirect_to payment_method_index_path
  end
end
