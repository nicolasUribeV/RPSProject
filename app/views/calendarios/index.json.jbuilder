json.array!(@calendarios) do |calendario|
  json.extract! calendario, :id, :Fecha
  json.url calendario_url(calendario, format: :json)
end
