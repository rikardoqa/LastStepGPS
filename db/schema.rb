# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160514212342) do

  create_table "favoritos", force: :cascade do |t|
    t.string   "nomeLocal"
    t.integer  "posicionamento_id"
    t.integer  "usuario_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "favoritos", ["posicionamento_id"], name: "index_favoritos_on_posicionamento_id"
  add_index "favoritos", ["usuario_id"], name: "index_favoritos_on_usuario_id"

  create_table "posicionamentos", force: :cascade do |t|
    t.string   "posicao"
    t.string   "data"
    t.string   "horario"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posicionamentos", ["usuario_id"], name: "index_posicionamentos_on_usuario_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "login"
    t.string   "senha"
    t.string   "nome"
    t.string   "email"
    t.string   "numero"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
