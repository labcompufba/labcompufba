class CreateLaboratorios < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratorios do |t|
      t.string :codigo
      t.string :integer
      t.string :descricao
      t.string :local

      t.timestamps
    end
  end
end
