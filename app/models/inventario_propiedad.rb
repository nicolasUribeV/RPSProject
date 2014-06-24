class InventarioPropiedad < ActiveRecord::Base
  belongs_to :Item
  belongs_to :Propiedad
end
