class CreateCuponPropietarios < ActiveRecord::Migration
  def change
    create_table :cupon_propietarios do |t|
      t.references :Propietario, index: true
      t.integer :TotalCobrosProp
      t.integer :TotalPagosProp
      t.date :FechaEmisionProp

      t.timestamps
    end
  end
end
