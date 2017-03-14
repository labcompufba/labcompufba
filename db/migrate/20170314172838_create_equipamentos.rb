class CreateEquipamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :equipamentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
