class CreateNotificacions < ActiveRecord::Migration
  def change
    create_table :notificacions do |t|
      t.references :Usuario, index: true
      t.text :DescripcionNotificacion
      t.boolean :Visualizado
      t.string :Redireccion

      t.timestamps
    end
  end
end
