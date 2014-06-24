class Servicio < ActiveRecord::Base
  has_many :ServicioContratados
  has_many :ContratoPropiedads, :through => :ServicioContratados, :dependent => :destroy
end
