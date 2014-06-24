class Propiedad < ActiveRecord::Base
  belongs_to :Ubicacion
  belongs_to :TipoPropiedad
  belongs_to :Propietario
  has_many :InventarioPropiedads
  has_many :Items, :through => :InventarioPropiedads
  has_many :Fotos, :dependent => :destroy
  has_many :ContratosPropiedads
  has_many :ValorArriendos
  has_many :TipoArriendos, :through => :ValorArriendos, :dependent => :destroy
  has_many :CaracteristicaPropiedads
  has_many :Caracteristicas, :through => :CaracteristicaPropiedads, :dependent => :destroy
  has_many :Solicituds
  has_many :ContratoArriendos
  has_many :Arrendatarios, :through => :ContratoArriendos
end
