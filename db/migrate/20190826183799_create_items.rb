class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.monetize :amount, currency: { present: false }
      t.string :image
      t.boolean :condiment, :default =>false
      t.timestamps
    end
  end
end
