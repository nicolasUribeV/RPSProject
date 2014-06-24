json.array!(@valor_arriendos) do |valor_arriendo|
  json.extract! valor_arriendo, :id, :TipoArriendo_id, :Propiedad_id, :ValorDefinido, :Temporada, :ValorActivo, :FechaInicioTemp, :FechaTerminoTemp
  json.url valor_arriendo_url(valor_arriendo, format: :json)
end
