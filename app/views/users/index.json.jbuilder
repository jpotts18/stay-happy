json.array!(@users) do |user|
  json.extract! user, :id, :first, :last, :birthday, :checkin_hour, :checkin_minute, :timezone
  json.url user_url(user, format: :json)
end
