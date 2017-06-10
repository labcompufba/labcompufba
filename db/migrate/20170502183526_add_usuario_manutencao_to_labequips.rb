class AddUsuarioManutencaoToLabequips < ActiveRecord::Migration[5.0]
  def change
    add_column :labequips, :usuario_manutencao_id, :integer
  end
end
