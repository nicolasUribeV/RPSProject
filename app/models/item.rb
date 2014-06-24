class Item < ActiveRecord::Base
	has_many :InventarioPropiedads
	has_many :Propiedads, :through => :InventarioPropiedads, :dependent => :destroy
end
