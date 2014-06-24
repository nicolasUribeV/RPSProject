json.array!(@caracteristica_tipos) do |caracteristica_tipo|
  json.extract! caracteristica_tipo, :id, :TipoPropiedad_id, :Caracteristica_id
  json.url caracteristica_tipo_url(caracteristica_tipo, format: :json)
end
