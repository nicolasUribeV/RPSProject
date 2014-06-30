class Servicio < ActiveRecord::Base
  has_many :ServicioContratados
  has_many :ContratoPropiedads, :through => :ServicioContratados, :dependent => :destroy

  validates :NombreServicio, :presence =>{:message => "No puede quedar en blanco"}, confirmation: true 
end
