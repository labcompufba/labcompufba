json.extract! user, :id, :nome, :matricula, :admin,:pesq, :email,:password, :created_at, :updated_at
json.url laboratorio_url(user, format: :json)