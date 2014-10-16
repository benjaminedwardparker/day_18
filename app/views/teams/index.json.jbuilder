json.array!(@teams) do |team|
  json.extract! team, :id, :name, :city, :bestplayer
  json.url team_url(team, format: :json)
end
