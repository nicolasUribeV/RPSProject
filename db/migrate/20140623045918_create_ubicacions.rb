class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.references :Ubicacion, index: true
      t.string :NombreUbicacion

      t.timestamps
    end
  end
end
