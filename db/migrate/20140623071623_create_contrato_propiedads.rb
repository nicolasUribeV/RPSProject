class CreateContratoPropiedads < ActiveRecord::Migration
  def change
    create_table :contrato_propiedads do |t|
      t.references :Propiedad, index: true
      t.date :FechaInicio
      t.integer :DuracionContrato
      t.string :ContratoDigital
      t.boolean :Vigencia

      t.timestamps
    end
  end
end
