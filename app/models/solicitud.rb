class Solicitud < ActiveRecord::Base
  belongs_to :Propiedad
  belongs_to :Arrendatario
end
