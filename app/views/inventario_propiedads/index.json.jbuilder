json.array!(@inventario_propiedads) do |inventario_propiedad|
  json.extract! inventario_propiedad, :id, :Item_id, :Propiedad_id, :CantidadItem, :FechaInventario, :NumeracionInventario
  json.url inventario_propiedad_url(inventario_propiedad, format: :json)
end
