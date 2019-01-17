json.extract! webhook, :id, :name, :url, :created_at, :updated_at
json.url webhook_url(webhook, format: :json)
