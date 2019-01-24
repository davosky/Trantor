json.extract! service_station, :id, :name, :address, :zip, :city, :province, :country, :vat_number, :created_at, :updated_at
json.url service_station_url(service_station, format: :json)
