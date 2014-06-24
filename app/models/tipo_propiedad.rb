class TipoPropiedad < ActiveRecord::Base
	has_many :Propiedads
  	has_many :CaracteristicaTipos
  	has_many :Caracteristicas, :through => :CaracteristicaTipos, :dependent => :destroy
end
