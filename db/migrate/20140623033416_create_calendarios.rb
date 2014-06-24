class CreateCalendarios < ActiveRecord::Migration
  def change
    create_table :calendarios do |t|
      t.datetime :Fecha

      t.timestamps
    end
  end
end
