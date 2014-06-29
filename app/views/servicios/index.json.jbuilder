json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :Nombre_del_Servicio, :Descripcion, :Estado_del_Servicio
  json.url servicio_url(servicio, format: :json)
end
