class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :video
      t.string :image
      t.string :desc
      t.integer :prep_time
      t.integer :cook_time
      t.references :user
      t.references :ingredient
      t.timestamps
    end
  end
end
