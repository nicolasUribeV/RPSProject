class CreateCaracteristicaPropiedads < ActiveRecord::Migration
  def change
    create_table :caracteristica_propiedads do |t|
      t.references :Propiedad, index: true
      t.references :Caracteristica, index: true
      t.string :ValorCaracteristica

      t.timestamps
    end
  end
end
