class AddValorEquipamentoToEquipamentos < ActiveRecord::Migration[5.0]
  def change
    add_column :equipamentos, :valor_equip, :decimal
  end
end
