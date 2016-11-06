json.extract! game, :id, :game_name, :genre, :created_at, :updated_at
json.url game_url(game, format: :json)