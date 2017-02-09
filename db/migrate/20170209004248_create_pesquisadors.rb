class CreatePesquisadors < ActiveRecord::Migration[5.0]
  def change
    create_table :pesquisadors do |t|
      t.string :codigo
      t.string :nome
      t.string :username
      t.string :senha
      t.string :email
      t.string :orientandos
      t.string :projeto

      t.timestamps
    end
  end
end
