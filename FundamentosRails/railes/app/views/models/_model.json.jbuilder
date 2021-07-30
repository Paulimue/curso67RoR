json.extract! model, :id, :Mensaje, :content, :usuario_id, :created_at, :updated_at
json.url model_url(model, format: :json)
