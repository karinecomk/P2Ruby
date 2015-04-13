class CreateResultados < ActiveRecord::Migration
  def change
    create_table :resultados do |t|
      t.references :paciente, index: true
      t.float :pesoinicial
      t.float :pesofinal
      t.string :status
      t.float :perdas
      t.float :ganhos

      t.timestamps null: false
    end
    add_foreign_key :resultados, :pacientes
  end
end
