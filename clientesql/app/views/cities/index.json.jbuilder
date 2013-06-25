json.array!(@cities) do |city|
  json.extract! city, :name, :departament
  json.url city_url(city, format: :json)
end