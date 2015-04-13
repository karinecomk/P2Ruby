class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.float :dias
      t.float :peso

      t.timestamps null: false
    end
  end
end
