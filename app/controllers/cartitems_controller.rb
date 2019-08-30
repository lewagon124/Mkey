class CartitemsController < ApplicationController
  def new
  end
  def create

    @item=Item.find(1)#params[:item_id])
    @cartitem=Cartitem.new(quantity: 1)
    @cartitem.item = @item
    if current_user.current_cart
      @cartitem.cart = current_user.current_cart
      @cartitem.cart.total += @item.amount_cents
    else
      @cartitem.cart=Cart.create(user: current_user, total: 0)
    end
    @cartitem.save

    # redirect_to new_cart_path(cartitem: @cartitem, item: @item)
  end
end
