json.array!(@contrato_arriendos) do |contrato_arriendo|
  json.extract! contrato_arriendo, :id, :Propiedad_id, :Arrendatario_id, :FechaInicioArriendo, :FechaTerminoArriendo, :TipoRenovacion, :PeriodoReajuste, :MultaPeriocidad, :DiaPago, :ContratoDigital
  json.url contrato_arriendo_url(contrato_arriendo, format: :json)
end
