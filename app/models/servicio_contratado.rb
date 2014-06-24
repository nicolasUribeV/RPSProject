class ServicioContratado < ActiveRecord::Base
  belongs_to :Servicio
  belongs_to :ContratoPropiedad
end
