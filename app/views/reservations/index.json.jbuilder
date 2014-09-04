json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :booking, :user_id, :restaurant_id
  json.url reservation_url(reservation, format: :json)
end
