class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.boolean :status, :default=>false
      t.datetime :paydate
      t.timestamps
    end
  end
end
