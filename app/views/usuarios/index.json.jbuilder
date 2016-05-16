json.usuario(@usuarios) do |usuario|
  json.extract! usuario, :id, :login, :senha, :nome, :email, :numero, :status
  json.url usuario_url(usuario, format: :json)
end
