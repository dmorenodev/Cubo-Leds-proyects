json.array!(@imagenes) do |imagene|
  json.extract! imagene, :id, :texto, :description
  json.url imagene_url(imagene, format: :json)
end
