class CartItemsController < ApplicationController
  
  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.save
    redirect_to cart_items_path
  end
  
  private
  
  def genre_params
    params.require(:cart_item).permit(:amount, :customer_id, :item_id)
  end
end
