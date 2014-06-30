json.array!(@solicituds) do |solicitud|
  json.extract! solicitud, :id, :Propiedad_id, :Arrendatario_id, :FechaEmision, :Estado, :TipoSolicitud, :inicio, :fin
  json.url solicitud_url(solicitud, format: :json)
end
