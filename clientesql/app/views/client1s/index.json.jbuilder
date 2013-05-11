json.array!(@client1s) do |client1|
  json.extract! client1, :name, :birth, :gender, :country, :city, :avatar
  json.url client1_url(client1, format: :json)
end