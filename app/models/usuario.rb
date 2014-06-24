class Usuario < ActiveRecord::Base
	has_one :Arrendatario
	has_one :Propietario
	has_many :Notificacions
end
