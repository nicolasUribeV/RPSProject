class CreateCuponPropiedads < ActiveRecord::Migration
  def change
    create_table :cupon_propiedads do |t|
      t.references :CuponPropietario, index: true
      t.references :ContratoPropiedad, index: true
      t.integer :TotalCobros
      t.integer :TotalPagos
      t.text :DescripcionCP
      t.date :FechaEmisionCP
      t.boolean :CPProcesada

      t.timestamps
    end
  end
end
