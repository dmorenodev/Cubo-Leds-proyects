json.array!(@videos) do |video|
  json.extract! video, :id, :titulo, :description
  json.url video_url(video, format: :json)
end
