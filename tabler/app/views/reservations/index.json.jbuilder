json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :startTime, :endTime, :partySize, :tables, :seats
  json.url reservation_url(reservation, format: :json)
end
