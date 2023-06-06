class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.string :timestamps
      t.references :users, null: false, foreign_key: true, index: true
      t.references :posts, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
