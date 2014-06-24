json.array!(@arrendatarios) do |arrendatario|
  json.extract! arrendatario, :id, :Usuario_id
  json.url arrendatario_url(arrendatario, format: :json)
end
