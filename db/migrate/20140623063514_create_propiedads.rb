class CreatePropiedads < ActiveRecord::Migration
  def change
    create_table :propiedads do |t|
      t.references :Ubicacion, index: true
      t.references :TipoPropiedad, index: true
      t.references :Propietario, index: true
      t.string :DireccionPropiedad
      t.boolean :Estacionamiento
      t.boolean :Bodega
      t.boolean :EquipadaMuebles
      t.integer :M2Totales
      t.text :Descripcion
      t.boolean :Habilitada

      t.timestamps
    end
  end
end
