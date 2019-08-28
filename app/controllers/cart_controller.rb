class CartController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end
  def update
    @order = Order.new
    @user = User.find(params[:user_id])
  end
end
