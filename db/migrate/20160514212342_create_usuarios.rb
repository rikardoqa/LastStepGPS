class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :senha
      t.string :nome
      t.string :email
      t.string :numero
      t.boolean :status

      t.timestamps null: false
    end
  end
end
