json.extract! site, :id, :name, :address, :active, :contact, :phone, :customer_id, :created_at, :updated_at
json.url site_url(site, format: :json)