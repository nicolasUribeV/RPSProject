class CreateInventarioPropiedads < ActiveRecord::Migration
  def change
    create_table :inventario_propiedads do |t|
      t.references :Item, index: true
      t.references :Propiedad, index: true
      t.integer :CantidadItem
      t.date :FechaInventario
      t.integer :NumeracionInventario

      t.timestamps
    end
  end
end
