json.array!(@ubicacions) do |ubicacion|
  json.extract! ubicacion, :id, :Ubicacion_id, :NombreUbicacion
  json.url ubicacion_url(ubicacion, format: :json)
end
