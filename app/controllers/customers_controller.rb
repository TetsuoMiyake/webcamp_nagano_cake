class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def show
    @customers.find(params[:id])
  end
  
  def item_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number)
  end
  
end
