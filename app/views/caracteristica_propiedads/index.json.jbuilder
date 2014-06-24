json.array!(@caracteristica_propiedads) do |caracteristica_propiedad|
  json.extract! caracteristica_propiedad, :id, :Propiedad_id, :Caracteristica_id, :ValorCaracteristica
  json.url caracteristica_propiedad_url(caracteristica_propiedad, format: :json)
end
