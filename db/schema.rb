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

ActiveRecord::Schema.define(version: 20181122030416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "titulo_logro"
    t.string   "imagen_logro"
    t.text     "descripcion_logro"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "facultad_logro"
    t.index ["user_id"], name: "index_achievements_on_user_id", using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "titulo_noticia"
    t.text     "cuerpo_noticia"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "imagen_noticia"
    t.index ["category_id"], name: "index_articles_on_category_id", using: :btree
    t.index ["user_id"], name: "index_articles_on_user_id", using: :btree
  end

  create_table "associations", force: :cascade do |t|
    t.string   "nombre_empresa"
    t.string   "contacto_empresa"
    t.string   "telefono_empresa"
    t.string   "correo_electronico_empresa"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "otro_telefono_empresa"
    t.string   "celular_empresa"
    t.string   "informacion_empresa"
  end

  create_table "careers", force: :cascade do |t|
    t.string   "descripcion_carrera"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_carrera"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "nombre_categoria"
    t.string   "color_categoria"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "facultad"
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "generations", force: :cascade do |t|
    t.integer  "career_id"
    t.string   "descripcion_generacion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "imagen_generacion"
    t.index ["career_id"], name: "index_generations_on_career_id", using: :btree
  end

  create_table "graduates", force: :cascade do |t|
    t.integer  "career_id"
    t.string   "nombre_egresado"
    t.string   "apellido_paterno_egresado"
    t.string   "apellido_materno_egresado"
    t.string   "sexo_egresado"
    t.text     "colonia_egresado"
    t.text     "calle_egresado"
    t.string   "codigo_postal_egresado"
    t.string   "celular_egresado"
    t.string   "otro_telefono_egresado"
    t.string   "correo_electronico_egresado"
    t.string   "status_egresado"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "trabajo_egresado"
    t.string   "estado_civil_egresado"
    t.string   "hijos_egresado"
    t.string   "matricula_egresado"
    t.integer  "generation_id"
    t.string   "nacimiento_egresado"
    t.string   "curp_egresado"
    t.string   "nacionalidad_egresado"
    t.string   "rfc_egresado"
    t.string   "promedio_egresado"
    t.string   "cumpleanos_egresado"
    t.string   "interior_egresado"
    t.string   "nivel_egresado"
    t.string   "puesto_egresado"
    t.string   "externa_egresado"
    t.string   "teltrabajo_egresado"
    t.text     "referencia_egresado"
    t.string   "avatar_egresado"
    t.index ["career_id"], name: "index_graduates_on_career_id", using: :btree
  end

  create_table "offers", force: :cascade do |t|
    t.string   "empresa_oferta"
    t.string   "vacante_oferta"
    t.string   "puesto_oferta"
    t.string   "sexo_oferta"
    t.string   "edad_oferta"
    t.text     "experiencia_oferta"
    t.text     "horario_oferta"
    t.text     "sueldo_oferta"
    t.string   "contacto_oferta"
    t.string   "email_oferta"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.text     "habilidad_oferta"
    t.text     "informacion_oferta"
    t.string   "celular_oferta"
    t.string   "telefono_oferta"
    t.string   "anexo_oferta"
    t.index ["user_id"], name: "index_offers_on_user_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "keywords_egresado"
    t.string   "sexo_egresado"
    t.string   "correo_electronico_egresado"
    t.string   "status_egresado"
    t.integer  "career_id"
    t.integer  "generation_id"
    t.string   "matricula_egresado"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "especialidad_solicitud"
    t.text     "habilidad_solicitud"
    t.text     "disponibilidad_solicitud"
    t.text     "idioma_solicitud"
    t.text     "ingreso_solicitud"
    t.text     "informacion_solicitud"
    t.string   "curriculum_solicitud"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_requests_on_user_id", using: :btree
  end

  create_table "roulettes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "titulo_carrusel"
    t.string   "subtitulo_carrusel"
    t.text     "cuerpo_carrusel"
    t.string   "imagen_carrusel"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "nombre_carrusel"
    t.index ["user_id"], name: "index_roulettes_on_user_id", using: :btree
  end

  create_table "searches", force: :cascade do |t|
    t.string   "keywords"
    t.string   "sexo_user"
    t.string   "email"
    t.string   "status_user"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "career_id"
    t.string   "matricula_user"
    t.integer  "generation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "type_user",              default: 0
    t.integer  "career_id"
    t.integer  "generation_id"
    t.string   "nombre_user"
    t.string   "apellido_paterno_user"
    t.string   "apellido_materno_user"
    t.string   "matricula_user"
    t.string   "externa_user"
    t.string   "cumpleanos_user"
    t.string   "nacimiento_user"
    t.string   "nacionalidad_user"
    t.string   "curp_user"
    t.string   "sexo_user"
    t.string   "estado_civil_user"
    t.string   "hijos_user"
    t.string   "rfc_user"
    t.string   "promedio_user"
    t.string   "status_user"
    t.string   "nivel_user"
    t.text     "calle_user"
    t.string   "interior_user"
    t.text     "referencia_user"
    t.text     "colonia_user"
    t.string   "codigo_postal_user"
    t.text     "trabajo_user"
    t.string   "puesto_user"
    t.string   "teltrabajo_user"
    t.string   "celular_user"
    t.string   "otro_telefono_user"
    t.string   "avatar_user"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "achievements", "users"
  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "generations", "careers"
  add_foreign_key "graduates", "careers"
  add_foreign_key "offers", "users"
  add_foreign_key "requests", "users"
  add_foreign_key "roulettes", "users"
end
