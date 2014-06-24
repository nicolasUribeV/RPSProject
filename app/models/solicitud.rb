class Solicitud < ActiveRecord::Base
  belongs_to :Propiedad
  belongs_to :Arrendatario
  belongs_to :Calendario
  belongs_to :Calendario
end
