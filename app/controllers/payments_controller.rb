class PaymentsController < ApplicationController
  before_action :set_cart, except: :index

  def new
  end

 def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @cart.price_cents,
    currency:     @cart.price.currency
  )

  @cart.update(status: true)

  redirect_to cart_payments_path

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_cart_payment_path(@cart)
  end

  def index
    @user=current_user
    @cart=Cart.find(params[:cart_id])
    @confirmation=@cart.id
    current_user.empty_cart
    @cart.destroy!
  end

private

  def set_cart
    # binding.pry
    @cart = current_user.carts.where(status: false).find(params[:cart_id])
  end

end
