class Ubicacion < ActiveRecord::Base
  has_many :Ubicacions, dependent: :destroy
  belongs_to :Ubicacion
  has_many :Propiedads
end
