class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.monetize :amount, currency: { present: false }
      t.json :payment
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
