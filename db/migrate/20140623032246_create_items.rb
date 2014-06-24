class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :NombreItem
      t.text :DescripcionItem
      t.boolean :EstadoItem

      t.timestamps
    end
  end
end
