class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.references :Propiedad, index: true
      t.references :Arrendatario, index: true
      t.datetime :FechaEmision
      t.boolean :Estado
      t.string :TipoSolicitud
      t.date :inicio
      t.date :fin

      t.timestamps
    end
  end
end
