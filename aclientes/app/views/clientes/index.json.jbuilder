json.array!(@clientes) do |cliente|
  json.extract! cliente, :name, :ident, :birth, :gender, :country, :departament, :city, :avatar
  json.url cliente_url(cliente, format: :json)
end