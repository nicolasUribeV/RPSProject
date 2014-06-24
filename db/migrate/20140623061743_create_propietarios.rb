class CreatePropietarios < ActiveRecord::Migration
  def change
    create_table :propietarios do |t|
      t.references :Usuario, index: true

      t.timestamps
    end
  end
end
