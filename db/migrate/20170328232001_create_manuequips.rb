class CreateManuequips < ActiveRecord::Migration[5.0]
  def change
    create_table :manuequips do |t|
      t.integer :manutencao_id
      t.integer :equipamento_id
      t.integer :labequip_id
      t.boolean :baixa, :default => false
      t.timestamps
    end
  end
end
