json.extract! device, :id, :kind, :brand, :model, :serial_number, :created_at, :updated_at
json.url device_url(device, format: :json)