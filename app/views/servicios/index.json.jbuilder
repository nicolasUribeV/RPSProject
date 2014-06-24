json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :NombreServicio, :Descripcion, :EstadoServicio
  json.url servicio_url(servicio, format: :json)
end
