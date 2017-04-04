class AddTipoServicoToManutentions < ActiveRecord::Migration[5.0]
  def change
    add_column :manutentions, :tipo_servico_id, :integer
  end
end
