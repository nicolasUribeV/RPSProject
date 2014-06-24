class ContratoArriendo < ActiveRecord::Base
  belongs_to :Propiedad
  belongs_to :Arrendatario
  has_many :CuponPagoArrendatarios
end
