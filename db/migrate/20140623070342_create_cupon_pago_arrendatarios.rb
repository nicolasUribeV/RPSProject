class CreateCuponPagoArrendatarios < ActiveRecord::Migration
  def change
    create_table :cupon_pago_arrendatarios do |t|
      t.references :ContratoArriendo, index: true
      t.date :FechaEmision
      t.integer :Total
      t.text :Comentario
      t.boolean :LiquidacionProcesada

      t.timestamps
    end
  end
end
