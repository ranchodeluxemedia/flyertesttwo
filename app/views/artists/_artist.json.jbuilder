json.extract! artist, :id, :name, :instagram_username, :created_at, :updated_at
json.url artist_url(artist, format: :json)