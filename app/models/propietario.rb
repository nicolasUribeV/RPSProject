class Propietario < ActiveRecord::Base
  belongs_to :Usuario
  has_many :CuponPropietarios
  has_many :Propiedads
end
