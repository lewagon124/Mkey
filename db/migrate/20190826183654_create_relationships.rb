class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :user, foreign_key: true
      t.integer :friend_user_id, foreign_key: { table_name: "user" }
      t.timestamps
    end
  end
end
