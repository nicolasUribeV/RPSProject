class CuponPropiedad < ActiveRecord::Base
  belongs_to :CuponPropietario
  belongs_to :ContratoPropiedad
  has_many :DetalleCupons
end
