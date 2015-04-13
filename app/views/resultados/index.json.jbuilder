json.array!(@resultados) do |resultado|
  json.extract! resultado, :id, :paciente_id, :pesoinicial, :pesofinal, :status, :perdas, :ganhos
  json.url resultado_url(resultado, format: :json)
end
