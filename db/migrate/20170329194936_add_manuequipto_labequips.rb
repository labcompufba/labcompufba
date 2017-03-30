class AddManuequiptoLabequips < ActiveRecord::Migration[5.0]
  def change
      add_column :labequips, :manutencao_id, :boolean, :default => false
  end
end
