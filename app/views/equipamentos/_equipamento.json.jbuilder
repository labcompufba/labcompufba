json.extract! equipamento, :id, :descricao, :valor_equip, :created_at, :updated_at
json.url equipamento_url(equipamento, format: :json)