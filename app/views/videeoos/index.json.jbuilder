json.array!(@videeoos) do |videeoo|
  json.extract! videeoo, :id, :Titulo, :Descripcion, :Url, :Subido_por
  json.url videeoo_url(videeoo, format: :json)
end
