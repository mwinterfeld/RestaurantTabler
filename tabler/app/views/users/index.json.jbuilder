json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :username, :hashedPassoword, :email
  json.url user_url(user, format: :json)
end
