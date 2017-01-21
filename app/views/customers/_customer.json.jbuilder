json.extract! customer, :id, :name, :address, :active, :contact, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)