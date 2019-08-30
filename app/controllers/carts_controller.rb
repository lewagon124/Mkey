class CartsController < ApplicationController

  def index
  end

  def new
    @cartitem= current_user.current_cart
    @total=0
  end

  def show

  end
  def update
    @order = Order.new
    @user = User.find(params[:user_id])
  end
  def cart_params
    params.require(:cart).permit(:quantity)
  end
end
