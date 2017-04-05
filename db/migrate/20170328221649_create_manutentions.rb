class CreateManutentions < ActiveRecord::Migration[5.0]
  def change
    create_table :manutentions do |t|
      t.date :data_manutencao
      t.string :usuario_manutencao
      t.boolean :baixa,:default => false
      t.date :data_baixa
      t.string:fornecedor
      t.timestamps
    end
  end
end
