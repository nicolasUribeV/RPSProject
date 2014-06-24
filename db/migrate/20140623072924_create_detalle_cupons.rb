class CreateDetalleCupons < ActiveRecord::Migration
  def change
    create_table :detalle_cupons do |t|
      t.references :CuponPropiedad, index: true
      t.references :ContratoPropiedad, index: true
      t.string :DescripcionDetalle
      t.integer :Total
      t.boolean :DetalleProcesado
      t.boolean :TipoD

      t.timestamps
    end
  end
end
