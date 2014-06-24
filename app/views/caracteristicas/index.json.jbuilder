json.array!(@caracteristicas) do |caracteristica|
  json.extract! caracteristica, :id, :NombreCaracteristica, :UnidadMedida
  json.url caracteristica_url(caracteristica, format: :json)
end
