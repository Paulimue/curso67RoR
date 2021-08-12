json.extract! cliente, :id, :nombre, :apellido, :email, :contraseña, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
