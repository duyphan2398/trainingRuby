json.extract! photo, :id, :title, :description, :image, :sharing_mode, :created_at, :updated_at
json.url photo_url(photo, format: :json)
