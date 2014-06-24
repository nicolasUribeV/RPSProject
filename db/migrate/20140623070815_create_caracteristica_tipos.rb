class CreateCaracteristicaTipos < ActiveRecord::Migration
  def change
    create_table :caracteristica_tipos do |t|
      t.references :TipoPropiedad, index: true
      t.references :Caracteristica, index: true

      t.timestamps
    end
  end
end
