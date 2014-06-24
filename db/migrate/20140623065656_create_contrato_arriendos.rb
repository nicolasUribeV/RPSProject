class CreateContratoArriendos < ActiveRecord::Migration
  def change
    create_table :contrato_arriendos do |t|
      t.references :Propiedad, index: true
      t.references :Arrendatario, index: true
      t.date :FechaInicioArriendo
      t.date :FechaTerminoArriendo
      t.string :TipoRenovacion
      t.integer :PeriodoReajuste
      t.integer :MultaPeriocidad
      t.integer :DiaPago
      t.string :ContratoDigital

      t.timestamps
    end
  end
end
