json.array!(@places) do |place|
  json.extract! place, :id, :name, :role, :start_date, :end_date, :place_url
  json.url place_url(place, format: :json)
end
