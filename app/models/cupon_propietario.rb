class CuponPropietario < ActiveRecord::Base
  belongs_to :Propietario
  has_many :CuponPropiedads
end
