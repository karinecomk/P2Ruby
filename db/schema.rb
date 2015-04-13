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

ActiveRecord::Schema.define(version: 20150412213731) do

  create_table "objetivos", force: :cascade do |t|
    t.float    "dias"
    t.float    "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.date     "nascimento"
    t.float    "altura"
    t.float    "imc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resultados", force: :cascade do |t|
    t.integer  "paciente_id"
    t.float    "pesoinicial"
    t.float    "pesofinal"
    t.string   "status"
    t.float    "perdas"
    t.float    "ganhos"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resultados", ["paciente_id"], name: "index_resultados_on_paciente_id"

end
