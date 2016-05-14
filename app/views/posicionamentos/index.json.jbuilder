json.array!(@posicionamentos) do |posicionamento|
  json.extract! posicionamento, :id, :posicao, :data, :horario, :usuario_id
  json.url posicionamento_url(posicionamento, format: :json)
end
