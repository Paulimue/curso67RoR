json.extract! producto, :id, :nombre, :precio, :descripción, :categoria, :valoración, :feeling, :created_at, :updated_at
json.url producto_url(producto, format: :json)
