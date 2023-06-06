class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.string :timestamp
      t.integer :comment_counter
      t.integer :likes_counter
      t.references :users, null: false, foreign_key: true, index: true
    
      t.timestamps
    end
  end
end
