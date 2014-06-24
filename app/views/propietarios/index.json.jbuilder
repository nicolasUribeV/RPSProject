json.array!(@propietarios) do |propietario|
  json.extract! propietario, :id, :Usuario_id
  json.url propietario_url(propietario, format: :json)
end
