class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.string :NombreCaracteristica
      t.string :UnidadMedida

      t.timestamps
    end
  end
end
