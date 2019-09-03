class PaymentsController < ApplicationController
  before_action :set_cart

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
  current_user.empty_cart
  redirect_to cart_path(@cart)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_cart_payment_path(@cart)
  end

private

  def set_cart
    @cart = current_user.carts.where(status: false).find(params[:cart_id])
  end

end
