class CreatePosicionamentos < ActiveRecord::Migration
  def change
    create_table :posicionamentos do |t|
      t.string :posicao
      t.string :data
      t.string :horario
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
