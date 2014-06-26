class Arrendatario < ActiveRecord::Base
  belongs_to :Usuario
  has_many :ContratoArriendos
  has_many :Solicituds
  validates_uniqueness_of :Usuario_id
end
