json.extract! service, :id, :service_type_id, :date, :description, :quantity, :rate, :created_at, :updated_at
json.url service_url(service, format: :json)