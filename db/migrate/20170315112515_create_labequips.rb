class CreateLabequips < ActiveRecord::Migration[5.0]
  def change
    create_table :labequips do |t|
      t.integer :laboratorio_id
      t.integer :equipamento_id
      t.integer :quantidade
      t.string :numero_tombamento

      t.timestamps
    end
  end
end
