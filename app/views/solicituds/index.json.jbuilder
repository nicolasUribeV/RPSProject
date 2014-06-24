json.array!(@solicituds) do |solicitud|
  json.extract! solicitud, :id, :Propiedad_id, :Arrendatario_id, :Calendario_id, :Calendario_id, :FechaEmision, :Estado, :TipoSolicitud
  json.url solicitud_url(solicitud, format: :json)
end
