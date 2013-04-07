class PaymentMethodController < ApplicationController
  def index
    @paymentMethods = PaymentMethod.all.sort_by {|m| m.sortOrder}    
  end

  def new
  end

  def edit
  end
end
