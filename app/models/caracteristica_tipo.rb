class CaracteristicaTipo < ActiveRecord::Base
  belongs_to :TipoPropiedad
  belongs_to :Caracteristica
end
