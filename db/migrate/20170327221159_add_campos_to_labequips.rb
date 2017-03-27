class AddCamposToLabequips < ActiveRecord::Migration[5.0]
  def change
        add_column :labequips, :manutencao, :boolean
        add_column :labequips, :user_manutencao, :string
        add_column :labequips, :data_manutencao, :date
  end
end
