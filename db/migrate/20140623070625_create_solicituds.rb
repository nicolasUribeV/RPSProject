class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.references :Propiedad, index: true
      t.references :Arrendatario, index: true
      t.references :Calendario, index: true
      t.references :Calendario, index: true
      t.date :FechaEmision
      t.boolean :Estado
      t.string :TipoSolicitud

      t.timestamps
    end
  end
end
