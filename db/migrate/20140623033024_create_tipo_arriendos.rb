class CreateTipoArriendos < ActiveRecord::Migration
  def change
    create_table :tipo_arriendos do |t|
      t.text :Descripcion
      t.string :NombreTipo

      t.timestamps
    end
  end
end
