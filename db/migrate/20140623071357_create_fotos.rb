class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.references :Propiedad, index: true
      t.string :DireccionFoto
      t.text :DescripcionFoto

      t.timestamps
    end
  end
end
