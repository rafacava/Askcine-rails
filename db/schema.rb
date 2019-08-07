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

ActiveRecord::Schema.define(version: 2019_08_06_231012) do

  create_table "average_caches", force: :cascade do |t|
    t.integer "rater_id"
    t.string "rateable_type"
    t.integer "rateable_id"
    t.float "avg", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "imagem"
    t.string "fachada"
    t.string "lat"
    t.string "long"
    t.integer "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_cinemas_on_cidade_id"
  end

  create_table "comentafilmes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "filme_id"
    t.string "titulo"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nota"
    t.index ["filme_id"], name: "index_comentafilmes_on_filme_id"
    t.index ["user_id"], name: "index_comentafilmes_on_user_id"
  end

  create_table "destaques", force: :cascade do |t|
    t.string "titulo"
    t.string "imagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filmes", force: :cascade do |t|
    t.integer "cd_filme"
    t.string "nome"
    t.integer "ano"
    t.string "diretor"
    t.string "categoria"
    t.string "sinopse"
    t.string "imagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "overall_averages", force: :cascade do |t|
    t.string "rateable_type"
    t.integer "rateable_id"
    t.float "overall_avg", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postagems", force: :cascade do |t|
    t.string "titulo"
    t.text "conteudo"
    t.string "imagem"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_postagems_on_user_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer "rater_id"
    t.string "rateable_type"
    t.integer "rateable_id"
    t.float "stars", null: false
    t.string "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
    t.index ["rater_id"], name: "index_rates_on_rater_id"
  end

  create_table "rating_caches", force: :cascade do |t|
    t.string "cacheable_type"
    t.integer "cacheable_id"
    t.float "avg", null: false
    t.integer "qty", null: false
    t.string "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"
  end

  create_table "sessaos", force: :cascade do |t|
    t.date "dia"
    t.time "horario"
    t.boolean "status"
    t.integer "cinema_id"
    t.integer "filme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_sessaos_on_cinema_id"
    t.index ["filme_id"], name: "index_sessaos_on_filme_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "colaborador", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
