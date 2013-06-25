json.array!(@countries) do |country|
  json.extract! country, :name, :continent
  json.url country_url(country, format: :json)
end