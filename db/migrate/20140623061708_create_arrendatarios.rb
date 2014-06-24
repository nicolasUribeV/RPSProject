class CreateArrendatarios < ActiveRecord::Migration
  def change
    create_table :arrendatarios do |t|
      t.references :Usuario, index: true

      t.timestamps
    end
  end
end
