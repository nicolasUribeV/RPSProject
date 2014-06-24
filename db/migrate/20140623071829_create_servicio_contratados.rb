class CreateServicioContratados < ActiveRecord::Migration
  def change
    create_table :servicio_contratados do |t|
      t.references :Servicio, index: true
      t.references :ContratoPropiedad, index: true
      t.integer :PrecioAcordado
      t.string :Periocidad
      t.boolean :ServicioActivo

      t.timestamps
    end
  end
end
