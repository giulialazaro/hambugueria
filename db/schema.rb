# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_23_132506) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bebidas", force: :cascade do |t|
    t.string "descricao"
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "burguers", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "endereco"
    t.integer "burguer_id", null: false
    t.integer "bebida_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bebida_id"], name: "index_contratos_on_bebida_id"
    t.index ["burguer_id"], name: "index_contratos_on_burguer_id"
  end

  add_foreign_key "contratos", "bebidas"
  add_foreign_key "contratos", "burguers"
end
