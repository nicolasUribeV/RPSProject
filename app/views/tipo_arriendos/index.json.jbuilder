json.array!(@tipo_arriendos) do |tipo_arriendo|
  json.extract! tipo_arriendo, :id, :Descripcion, :NombreTipo
  json.url tipo_arriendo_url(tipo_arriendo, format: :json)
end
