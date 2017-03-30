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

ActiveRecord::Schema.define(version: 20170329194936) do

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
    t.integer  "laboratorio_id"
    t.integer  "equipamento_id"
    t.integer  "quantidade"
    t.string   "numero_tombamento"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "manutencao"
    t.string   "user_manutencao"
    t.date     "data_manutencao"
    t.boolean  "manutencao_id",     default: false
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.text     "local"
    t.integer  "instituto_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "manuequips", force: :cascade do |t|
    t.integer  "manutencao_id"
    t.integer  "equipamento_id"
    t.integer  "labequip_id"
    t.boolean  "baixa"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "manutentions", force: :cascade do |t|
    t.date     "data_manutencao"
    t.string   "usuario_manutencao"
    t.boolean  "baixa"
    t.date     "data_baixa"
    t.string   "fornecedor"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "nome",                   default: "", null: false
    t.string   "matricula",              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.boolean  "pesq"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
