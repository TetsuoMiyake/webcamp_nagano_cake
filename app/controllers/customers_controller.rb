class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(current_customer[:id])
  end
  
  def edit
    @customer = Customer.find(current_customer[:id])
  end
  
  def update
    @customer = Customer.find(current_customer[:id])
    @customer.update(customer_params)
    redirect_to customer_path(current_customer.id)
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :is_active)
  end
  
end