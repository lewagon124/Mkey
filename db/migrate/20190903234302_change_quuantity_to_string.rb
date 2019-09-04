class ChangeQuuantityToString < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :quantity, :string
  end
end
