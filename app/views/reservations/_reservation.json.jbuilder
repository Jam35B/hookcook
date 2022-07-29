json.extract! reservation, :id, :working_day, :reserve_date, :reserve_price, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
