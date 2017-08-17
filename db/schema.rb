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

ActiveRecord::Schema.define(version: 20170816093937) do

  create_table "asteroides", force: :cascade do |t|
    t.string "nombre"
    t.text "Advertencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "astronomia", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beyonds", force: :cascade do |t|
    t.string "nombre"
    t.text "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cometa", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constelaciones", force: :cascade do |t|
    t.string "signo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estrellas", force: :cascade do |t|
    t.string "nombre"
    t.text "tamaño"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galaxia", force: :cascade do |t|
    t.text "nombre"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planeta", force: :cascade do |t|
    t.string "nombre"
    t.text "tamaño"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "nombre"
    t.text "tamaño"
    t.text "galaxia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
