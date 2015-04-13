json.array!(@objetivos) do |objetivo|
  json.extract! objetivo, :id, :dias, :peso
  json.url objetivo_url(objetivo, format: :json)
end
