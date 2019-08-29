class OrdersController < ApplicationController
  def new
  end
  def create
    cart = Cart.find(params[:cart_id])
    order = Order.create!(address: cart.address, amount: cart.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
  def show
     @order = current_user.orders.where(state: 'paid').find(params[:id])
   end
end
