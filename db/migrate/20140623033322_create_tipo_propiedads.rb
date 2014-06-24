class CreateTipoPropiedads < ActiveRecord::Migration
  def change
    create_table :tipo_propiedads do |t|
      t.string :NombreTipo

      t.timestamps
    end
  end
end
