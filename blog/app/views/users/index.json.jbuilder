json.array!(@users) do |user|
  json.extract! user, :nombre, :password, :email, :bio, :programa, :birthday, :work_time
  json.url user_url(user, format: :json)
end