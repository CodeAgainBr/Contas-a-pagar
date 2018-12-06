json.extract! conta, :id, :descricao, :despesa, :valor, :vencimento, :fornecedor_id, :created_at, :updated_at
json.url conta_url(conta, format: :json)
