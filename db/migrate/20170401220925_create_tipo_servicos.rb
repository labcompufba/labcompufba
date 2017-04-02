class CreateTipoServicos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_servicos do |t|
      t.string :servico

      t.timestamps
    end
  end
end
