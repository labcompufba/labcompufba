class CreateAgendamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :agendamentos do |t|
      t.string :nome
      t.string :local
      t.string :laboratório
      t.text :resumo
      t.text :bibliografia
      t.text :agência
      t.integer :número
      t.date :data
      t.time :inicial
      t.time :final

      t.timestamps
    end
  end
end
