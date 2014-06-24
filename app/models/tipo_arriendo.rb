class TipoArriendo < ActiveRecord::Base
  has_many :ValorArriendos
  has_many :Propiedads, :through => :ValorArriendos, :dependent => :destroy
end
