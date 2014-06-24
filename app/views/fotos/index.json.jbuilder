json.array!(@fotos) do |foto|
  json.extract! foto, :id, :Propiedad_id, :DireccionFoto, :DescripcionFoto
  json.url foto_url(foto, format: :json)
end
