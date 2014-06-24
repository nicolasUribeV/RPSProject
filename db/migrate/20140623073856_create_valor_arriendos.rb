class CreateValorArriendos < ActiveRecord::Migration
  def change
    create_table :valor_arriendos do |t|
      t.references :TipoArriendo, index: true
      t.references :Propiedad, index: true
      t.integer :ValorDefinido
      t.string :Temporada
      t.boolean :ValorActivo
      t.date :FechaInicioTemp
      t.date :FechaTerminoTemp

      t.timestamps
    end
  end
end
