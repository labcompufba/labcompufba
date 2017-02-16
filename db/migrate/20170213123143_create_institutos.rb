class CreateInstitutos < ActiveRecord::Migration[5.0]
  def change
    create_table :institutos do |t|
      t.integer :cod_inst
      t.string :nome
      t.text :endereco

      t.timestamps
    end
  end
end
