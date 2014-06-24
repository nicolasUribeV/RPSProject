class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :NombreServicio
      t.text :Descripcion
      t.boolean :EstadoServicio

      t.timestamps
    end
  end
end
