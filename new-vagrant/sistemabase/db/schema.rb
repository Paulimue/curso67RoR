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

ActiveRecord::Schema.define(version: 2021_08_05_225406) do

  create_table "categoria", charset: "utf8mb3", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", charset: "utf8mb3", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "contraseña"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "direccions", charset: "utf8mb3", force: :cascade do |t|
    t.string "calle"
    t.integer "numero"
    t.integer "departamento"
    t.string "ciudad"
    t.string "region"
    t.string "pais"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productos", charset: "utf8mb3", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.string "descripción"
    t.string "categoria"
    t.integer "valoración"
    t.integer "feeling"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", charset: "utf8mb3", force: :cascade do |t|
    t.integer "fecha"
    t.string "cliente"
    t.integer "descuento"
    t.integer "monto"
    t.integer "cantidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
