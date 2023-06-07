class CreateLike < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.string :timestamp
      t.references :authors, null: false, foreign_key: { to_table: 'authors' }, index: true
      t.references :posts, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
