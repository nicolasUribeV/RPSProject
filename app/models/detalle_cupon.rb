class DetalleCupon < ActiveRecord::Base
  belongs_to :CuponPropiedad
  belongs_to :ContratoPropiedad
end
