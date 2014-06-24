json.array!(@contrato_propiedads) do |contrato_propiedad|
  json.extract! contrato_propiedad, :id, :Propiedad_id, :FechaInicio, :DuracionContrato, :ContratoDigital, :Vigencia
  json.url contrato_propiedad_url(contrato_propiedad, format: :json)
end
