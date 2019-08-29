class AddPriceToCarts < ActiveRecord::Migration[5.2]
  def change
    add_monetize :carts, :price, currency: { present: false }
  end
end
