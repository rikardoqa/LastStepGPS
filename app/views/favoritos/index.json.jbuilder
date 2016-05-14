json.array!(@favoritos) do |favorito|
  json.extract! favorito, :id, :nomeLocal, :posicionamento_id, :usuario_id
  json.url favorito_url(favorito, format: :json)
end
