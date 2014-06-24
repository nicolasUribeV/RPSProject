class Caracteristica < ActiveRecord::Base
	has_many :CaracteristicaPropiedads
	has_many :Propiedads, :through => :CaracteristicaPropiedads, :dependent => :destroy
	has_many :CaracteristicaTipos
	has_many :TipoPropiedad, :through => :CaracteristicaTipos, :dependent => :destroy
	
end
