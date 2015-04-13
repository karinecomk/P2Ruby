class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.date :nascimento
      t.float :altura
      t.float :imc

      t.timestamps null: false
    end
  end
end
