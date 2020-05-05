json.extract! photo, :id, :caption, :category_id, :active, :created_at, :updated_at
json.url photo_url(photo, format: :json)
