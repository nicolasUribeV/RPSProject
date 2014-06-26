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

ActiveRecord::Schema.define(version: 20140626072841) do

  create_table "arrendatarios", force: true do |t|
    t.integer  "Usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arrendatarios", ["Usuario_id"], name: "index_arrendatarios_on_Usuario_id", using: :btree

  create_table "calendarios", force: true do |t|
    t.datetime "Fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caracteristica_propiedads", force: true do |t|
    t.integer  "Propiedad_id"
    t.integer  "Caracteristica_id"
    t.string   "ValorCaracteristica"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caracteristica_propiedads", ["Caracteristica_id"], name: "index_caracteristica_propiedads_on_Caracteristica_id", using: :btree
  add_index "caracteristica_propiedads", ["Propiedad_id"], name: "index_caracteristica_propiedads_on_Propiedad_id", using: :btree

  create_table "caracteristica_tipos", force: true do |t|
    t.integer  "TipoPropiedad_id"
    t.integer  "Caracteristica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caracteristica_tipos", ["Caracteristica_id"], name: "index_caracteristica_tipos_on_Caracteristica_id", using: :btree
  add_index "caracteristica_tipos", ["TipoPropiedad_id"], name: "index_caracteristica_tipos_on_TipoPropiedad_id", using: :btree

  create_table "caracteristicas", force: true do |t|
    t.string   "NombreCaracteristica"
    t.string   "UnidadMedida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contrato_arriendos", force: true do |t|
    t.integer  "Propiedad_id"
    t.integer  "Arrendatario_id"
    t.date     "FechaInicioArriendo"
    t.date     "FechaTerminoArriendo"
    t.string   "TipoRenovacion"
    t.integer  "PeriodoReajuste"
    t.integer  "MultaPeriocidad"
    t.integer  "DiaPago"
    t.string   "ContratoDigital"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contrato_arriendos", ["Arrendatario_id"], name: "index_contrato_arriendos_on_Arrendatario_id", using: :btree
  add_index "contrato_arriendos", ["Propiedad_id"], name: "index_contrato_arriendos_on_Propiedad_id", using: :btree

  create_table "contrato_propiedads", force: true do |t|
    t.integer  "Propiedad_id"
    t.date     "FechaInicio"
    t.integer  "DuracionContrato"
    t.string   "ContratoDigital"
    t.boolean  "Vigencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contrato_propiedads", ["Propiedad_id"], name: "index_contrato_propiedads_on_Propiedad_id", using: :btree

  create_table "cupon_pago_arrendatarios", force: true do |t|
    t.integer  "ContratoArriendo_id"
    t.date     "FechaEmision"
    t.integer  "Total"
    t.text     "Comentario"
    t.boolean  "LiquidacionProcesada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cupon_pago_arrendatarios", ["ContratoArriendo_id"], name: "index_cupon_pago_arrendatarios_on_ContratoArriendo_id", using: :btree

  create_table "cupon_propiedads", force: true do |t|
    t.integer  "CuponPropietario_id"
    t.integer  "ContratoPropiedad_id"
    t.integer  "TotalCobros"
    t.integer  "TotalPagos"
    t.text     "DescripcionCP"
    t.date     "FechaEmisionCP"
    t.boolean  "CPProcesada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cupon_propiedads", ["ContratoPropiedad_id"], name: "index_cupon_propiedads_on_ContratoPropiedad_id", using: :btree
  add_index "cupon_propiedads", ["CuponPropietario_id"], name: "index_cupon_propiedads_on_CuponPropietario_id", using: :btree

  create_table "cupon_propietarios", force: true do |t|
    t.integer  "Propietario_id"
    t.integer  "TotalCobrosProp"
    t.integer  "TotalPagosProp"
    t.date     "FechaEmisionProp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cupon_propietarios", ["Propietario_id"], name: "index_cupon_propietarios_on_Propietario_id", using: :btree

  create_table "detalle_cupons", force: true do |t|
    t.integer  "CuponPropiedad_id"
    t.integer  "ContratoPropiedad_id"
    t.string   "DescripcionDetalle"
    t.integer  "Total"
    t.boolean  "DetalleProcesado"
    t.boolean  "TipoD"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalle_cupons", ["ContratoPropiedad_id"], name: "index_detalle_cupons_on_ContratoPropiedad_id", using: :btree
  add_index "detalle_cupons", ["CuponPropiedad_id"], name: "index_detalle_cupons_on_CuponPropiedad_id", using: :btree

  create_table "fotos", force: true do |t|
    t.integer  "Propiedad_id"
    t.string   "DireccionFoto"
    t.text     "DescripcionFoto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fotos", ["Propiedad_id"], name: "index_fotos_on_Propiedad_id", using: :btree

  create_table "inventario_propiedads", force: true do |t|
    t.integer  "Item_id"
    t.integer  "Propiedad_id"
    t.integer  "CantidadItem"
    t.date     "FechaInventario"
    t.integer  "NumeracionInventario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventario_propiedads", ["Item_id"], name: "index_inventario_propiedads_on_Item_id", using: :btree
  add_index "inventario_propiedads", ["Propiedad_id"], name: "index_inventario_propiedads_on_Propiedad_id", using: :btree

  create_table "items", force: true do |t|
    t.string   "NombreItem"
    t.text     "DescripcionItem"
    t.boolean  "EstadoItem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notificacions", force: true do |t|
    t.integer  "Usuario_id"
    t.text     "DescripcionNotificacion"
    t.boolean  "Visualizado"
    t.string   "Redireccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notificacions", ["Usuario_id"], name: "index_notificacions_on_Usuario_id", using: :btree

  create_table "propiedads", force: true do |t|
    t.integer  "Ubicacion_id"
    t.integer  "TipoPropiedad_id"
    t.integer  "Propietario_id"
    t.string   "DireccionPropiedad"
    t.boolean  "Estacionamiento"
    t.boolean  "Bodega"
    t.boolean  "EquipadaMuebles"
    t.integer  "M2Totales"
    t.text     "Descripcion"
    t.boolean  "Habilitada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "propiedads", ["Propietario_id"], name: "index_propiedads_on_Propietario_id", using: :btree
  add_index "propiedads", ["TipoPropiedad_id"], name: "index_propiedads_on_TipoPropiedad_id", using: :btree
  add_index "propiedads", ["Ubicacion_id"], name: "index_propiedads_on_Ubicacion_id", using: :btree

  create_table "propietarios", force: true do |t|
    t.integer  "Usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "propietarios", ["Usuario_id"], name: "index_propietarios_on_Usuario_id", using: :btree

  create_table "servicio_contratados", force: true do |t|
    t.integer  "Servicio_id"
    t.integer  "ContratoPropiedad_id"
    t.integer  "PrecioAcordado"
    t.string   "Periocidad"
    t.boolean  "ServicioActivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "servicio_contratados", ["ContratoPropiedad_id"], name: "index_servicio_contratados_on_ContratoPropiedad_id", using: :btree
  add_index "servicio_contratados", ["Servicio_id"], name: "index_servicio_contratados_on_Servicio_id", using: :btree

  create_table "servicios", force: true do |t|
    t.string   "NombreServicio"
    t.text     "Descripcion"
    t.boolean  "EstadoServicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicituds", force: true do |t|
    t.integer  "Propiedad_id"
    t.integer  "Arrendatario_id"
    t.integer  "Calendario_id"
    t.date     "FechaEmision"
    t.boolean  "Estado"
    t.string   "TipoSolicitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "solicituds", ["Arrendatario_id"], name: "index_solicituds_on_Arrendatario_id", using: :btree
  add_index "solicituds", ["Calendario_id"], name: "index_solicituds_on_Calendario_id", using: :btree
  add_index "solicituds", ["Propiedad_id"], name: "index_solicituds_on_Propiedad_id", using: :btree

  create_table "tipo_arriendos", force: true do |t|
    t.text     "Descripcion"
    t.string   "NombreTipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_propiedads", force: true do |t|
    t.string   "NombreTipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubicacions", force: true do |t|
    t.integer  "Ubicacion_id"
    t.string   "NombreUbicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ubicacions", ["Ubicacion_id"], name: "index_ubicacions_on_Ubicacion_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "roles_mascara"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "Rut"
    t.string   "Nombre"
    t.string   "Apellido"
    t.date     "FechaNac"
    t.string   "Mail"
    t.integer  "Telefono"
    t.string   "Direccion"
    t.date     "FechaRegistro"
    t.boolean  "administrador"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valor_arriendos", force: true do |t|
    t.integer  "TipoArriendo_id"
    t.integer  "Propiedad_id"
    t.integer  "ValorDefinido"
    t.string   "Temporada"
    t.boolean  "ValorActivo"
    t.date     "FechaInicioTemp"
    t.date     "FechaTerminoTemp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "valor_arriendos", ["Propiedad_id"], name: "index_valor_arriendos_on_Propiedad_id", using: :btree
  add_index "valor_arriendos", ["TipoArriendo_id"], name: "index_valor_arriendos_on_TipoArriendo_id", using: :btree

end
