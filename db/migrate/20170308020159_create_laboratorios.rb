class CreateLaboratorios < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratorios do |t|
      t.integer :cod_lab
      t.integer :cod_inst
      t.string :nome
      t.text :local

      t.timestamps
    end
  end
end
