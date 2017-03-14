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

ActiveRecord::Schema.define(version: 20170314173330) do

  create_table "equipamentos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutos", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.text     "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labequips", force: :cascade do |t|
    t.integer  "cod_lab"
    t.integer  "cod_equip"
    t.integer  "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.text     "local"
    t.integer  "instituto_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pesquisadors", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nome"
    t.string   "username"
    t.string   "senha"
    t.string   "email"
    t.string   "orientandos"
    t.string   "projeto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
