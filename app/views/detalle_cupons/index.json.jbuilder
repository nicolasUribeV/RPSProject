json.array!(@detalle_cupons) do |detalle_cupon|
  json.extract! detalle_cupon, :id, :CuponPropiedad_id, :ContratoPropiedad_id, :DescripcionDetalle, :Total, :DetalleProcesado, :TipoD
  json.url detalle_cupon_url(detalle_cupon, format: :json)
end
