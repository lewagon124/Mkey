class CartitemsController < ApplicationController
  def new
  end

  def create

    @item=Item.find(params[:item_id])
    @cart= current_cart
    if @cart.
      raise
      # if !@item.exist?
        @cartitem=Cartitem.new(quantity: 1)
        @cartitem.item = @item
        if current_user.current_cart
          @cartitem.cart = current_user.current_cart
          @cartitem.cart.price_cents += @item.amount_cents
          @cartitem.cart.save
        else
          @cartitem.cart=Cart.create(user: current_user, total: 0)
        end
        @cartitem.save
    # else
    #   @cartitem = Cartitem.find_by(params[:id])
    #   @cartitem.quantity +=1
    #   @cartitem.save
    end
      # redirect_to new_cart_path(cartitem: @cartitem, item: @item)
  end
  def destroy

    cartitem=Cartitem.find(params[:id])
    cart= cartitem.cart
    cart.price_cents -= cartitem.item.amount_cents
    cart.save!
    cartitem.destroy
    redirect_to cart_path(current_user.current_cart)
  end

  def multi_create
    # binding.pry
    @recipe = Recipe.find(params[:recipe_id])
    item_ids = params[:ingredient_id]



    item_ids.each do |item_id|

      if current_user.current_cart.cartitems.find_by(item_id: params[:ingredient_id]).nil?
        @item=Item.find(item_id)
          @cartitem=Cartitem.new(quantity: 1)
          @cartitem.item = @item
          if current_user.current_cart
            @cartitem.cart = current_user.current_cart
            @cartitem.cart.price_cents += @item.amount_cents
            @cartitem.cart.save
          else
            @cartitem.cart=Cart.create(user: current_user, total: 0)
          end
          @cartitem.save
      else

        update = current_user.current_cart.cartitems.find_by(item_id: params[:ingredient_id])
        update.quantity +=1
        update.save
      end
    end
  end
end
