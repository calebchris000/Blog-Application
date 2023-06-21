class CreateAuthor < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.string :timestamp
      t.integer :post_counter, default: 0

      t.timestamps
    end
  end
end
