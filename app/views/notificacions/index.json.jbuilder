json.array!(@notificacions) do |notificacion|
  json.extract! notificacion, :id, :Usuario_id, :DescripcionNotificacion, :Visualizado, :Redireccion
  json.url notificacion_url(notificacion, format: :json)
end
