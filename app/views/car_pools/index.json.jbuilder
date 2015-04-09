json.array!(@car_pools) do |car_pool|
  json.extract! car_pool, :id, :title, :start_at, :end_at, :location_name, :location_address, :location_url, :details
  json.url car_pool_url(car_pool, format: :json)
end
