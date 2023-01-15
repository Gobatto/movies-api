json.extract! title, :id, :genre, :year, :country, :published_at, :description, :created_at, :updated_at
json.url title_url(title, format: :json)
