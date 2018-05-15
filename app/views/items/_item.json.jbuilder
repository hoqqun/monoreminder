json.extract! item, :id, :name, :price, :purchase_date, :created_at, :updated_at
json.url item_url(item, format: :json)
