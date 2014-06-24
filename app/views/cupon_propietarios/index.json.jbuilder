json.array!(@cupon_propietarios) do |cupon_propietario|
  json.extract! cupon_propietario, :id, :Propietario_id, :TotalCobrosProp, :TotalPagosProp, :FechaEmisionProp
  json.url cupon_propietario_url(cupon_propietario, format: :json)
end
