json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :Rut, :Nombre, :Apellido, :FechaNac, :Mail, :Telefono, :Direccion, :FechaRegistro, :administrador
  json.url usuario_url(usuario, format: :json)
end
