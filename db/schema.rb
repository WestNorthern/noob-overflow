# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171204195248) do

  create_table "answers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.text "content"
    t.integer "reputation", default: 0
    t.boolean "chosen", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "badges", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "initiated", default: false
    t.boolean "noob", default: false
    t.boolean "pleb", default: false
    t.boolean "hacker", default: false
    t.boolean "ninja", default: false
    t.boolean "dunce", default: false
    t.boolean "seeker", default: false
    t.boolean "helpful", default: false
    t.boolean "mastermind", default: false
    t.boolean "extrovert", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "codebae", default: false
    t.boolean "leet", default: false
    t.index ["user_id"], name: "index_badges_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.string "commentable_type"
    t.integer "commentable_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.integer "reputation", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "markdown_content"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.boolean "answered", default: false
    t.integer "reputation", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "reputations", force: :cascade do |t|
    t.integer "user_id"
    t.string "reputatable_type"
    t.integer "reputatable_id"
    t.boolean "rep_given"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reputatable_type", "reputatable_id"], name: "index_reputations_on_reputatable_type_and_reputatable_id"
    t.index ["user_id"], name: "index_reputations_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.text "about"
    t.integer "reputation", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email", "deleted_at"], name: "index_users_on_email_and_deleted_at", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username", "deleted_at"], name: "index_users_on_username_and_deleted_at", unique: true
  end

end
