json.array!(@cupon_propiedads) do |cupon_propiedad|
  json.extract! cupon_propiedad, :id, :CuponPropietario_id, :ContratoPropiedad_id, :TotalCobros, :TotalPagos, :DescripcionCP, :FechaEmisionCP, :CPProcesada
  json.url cupon_propiedad_url(cupon_propiedad, format: :json)
end
