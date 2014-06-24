json.array!(@servicio_contratados) do |servicio_contratado|
  json.extract! servicio_contratado, :id, :Servicio_id, :ContratoPropiedad_id, :PrecioAcordado, :Periocidad, :ServicioActivo
  json.url servicio_contratado_url(servicio_contratado, format: :json)
end
