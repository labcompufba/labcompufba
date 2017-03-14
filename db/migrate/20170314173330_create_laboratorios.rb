class CreateLaboratorios < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratorios do |t|
      t.string :nome
      t.string :sigla
      t.text :local
      t.integer :instituto_id

      t.timestamps
    end
  end
end
