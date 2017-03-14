class CreateInstitutos < ActiveRecord::Migration[5.0]
  def change
    create_table :institutos do |t|
      t.string :nome
      t.string :sigla
      t.text :local

      t.timestamps
    end
  end
end
