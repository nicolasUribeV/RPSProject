json.array!(@propiedads) do |propiedad|
  json.extract! propiedad, :id, :Ubicacion_id, :TipoPropiedad_id, :Propietario_id, :DireccionPropiedad, :Estacionamiento, :Bodega, :EquipadaMuebles, :M2Totales, :Descripcion, :Habilitada
  json.url propiedad_url(propiedad, format: :json)
end
