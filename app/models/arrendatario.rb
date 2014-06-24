class Arrendatario < ActiveRecord::Base
  belongs_to :Usuario
  has_many :ContratoArriendos
  has_many :Solicituds
end
