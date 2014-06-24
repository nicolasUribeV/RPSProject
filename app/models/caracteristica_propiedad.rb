class CaracteristicaPropiedad < ActiveRecord::Base
  belongs_to :Propiedad
  belongs_to :Caracteristica
end
