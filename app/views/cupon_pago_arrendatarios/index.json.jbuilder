json.array!(@cupon_pago_arrendatarios) do |cupon_pago_arrendatario|
  json.extract! cupon_pago_arrendatario, :id, :ContratoArriendo_id, :FechaEmision, :Total, :Comentario, :LiquidacionProcesada
  json.url cupon_pago_arrendatario_url(cupon_pago_arrendatario, format: :json)
end
