class ContratoPropiedad < ActiveRecord::Base
  belongs_to :Propiedad
  has_many :ServicioContratados
  has_many :Servicios, :through => :ServicioContratados, :dependent => :destroy
  has_many :CuponPropiedads
  has_many :DetalleCupons
end
