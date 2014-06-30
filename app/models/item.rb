class Item < ActiveRecord::Base
	has_many :InventarioPropiedads
	has_many :Propiedads, :through => :InventarioPropiedads, :dependent => :destroy

	validates :NombreItem, :presence =>{:message => "No puede quedar en blanco"}, confirmation: true 
end
