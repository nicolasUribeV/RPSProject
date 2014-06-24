class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :Rut
      t.string :Nombre
      t.string :Apellido
      t.date :FechaNac
      t.string :Mail
      t.integer :Telefono
      t.string :Direccion
      t.date :FechaRegistro
      t.boolean :administrador

      t.timestamps
    end
  end
end
