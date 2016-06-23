json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :name, :reservation_date, :reservation_time, :num_tables
  json.url reservation_url(reservation, format: :json)
end
