class Ubicacion < ActiveRecord::Base
  has_many :Ubicacions
  belongs_to :Ubicacion
  has_many :Propiedads
end
