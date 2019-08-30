class CartsController < ApplicationController

  def index
  end

  def new
    @cartitem = Cartitem.new
  end

  def create
    @cartitem = Cartitem.new(cart_params)
  end

  def show
    @items = Item.all
    @cartitem=Cartitem.find(params[:id])
    @quantity=cartitem.quantity
    @total=0
  end
  def update
    @order = Order.new
    @user = User.find(params[:user_id])
  end
  def cart_params
    params.require(:cart).permit(:quantity)
  end
end
