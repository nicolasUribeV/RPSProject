class ValorArriendo < ActiveRecord::Base
  belongs_to :TipoArriendo
  belongs_to :Propiedad
end
