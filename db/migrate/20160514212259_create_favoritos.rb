class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|
      t.string :nomeLocal
      t.references :posicionamento, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
