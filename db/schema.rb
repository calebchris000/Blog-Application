# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_06_175404) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "photo"
    t.text "bio"
    t.string "timestamp"
    t.integer "post_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.string "timestamps"
    t.bigint "authors_id", null: false
    t.bigint "posts_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authors_id"], name: "index_comments_on_authors_id"
    t.index ["posts_id"], name: "index_comments_on_posts_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string "timestamp"
    t.bigint "authors_id", null: false
    t.bigint "posts_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authors_id"], name: "index_likes_on_authors_id"
    t.index ["posts_id"], name: "index_likes_on_posts_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "timestamp"
    t.integer "comment_counter"
    t.integer "likes_counter"
    t.bigint "authors_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authors_id"], name: "index_posts_on_authors_id"
  end

  add_foreign_key "comments", "authors", column: "authors_id"
  add_foreign_key "comments", "posts", column: "posts_id"
  add_foreign_key "likes", "authors", column: "authors_id"
  add_foreign_key "likes", "posts", column: "posts_id"
  add_foreign_key "posts", "authors", column: "authors_id"
end
