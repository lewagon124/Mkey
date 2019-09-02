class CartsController < ApplicationController

  def index
  end

  def show
    @cart = Cart.find(params[:id])
    @cartitems = @cart.cartitems
  end
  def update
    @order = Order.new
    @user = User.find(params[:user_id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cartitem = @cart.cartitem
    @cartiem.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Cart item was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private

  def cart_params
    params.require(:cart).permit(:quantity)
  end
end
