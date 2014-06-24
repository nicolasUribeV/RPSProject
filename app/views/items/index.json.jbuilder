json.array!(@items) do |item|
  json.extract! item, :id, :NombreItem, :DescripcionItem, :EstadoItem
  json.url item_url(item, format: :json)
end
