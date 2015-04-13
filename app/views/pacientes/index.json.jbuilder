json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :cpf, :endereco, :nascimento, :altura, :imc
  json.url paciente_url(paciente, format: :json)
end
