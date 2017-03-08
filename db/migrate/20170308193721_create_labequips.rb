class CreateLabequips < ActiveRecord::Migration[5.0]
  def change
    create_table :labequips do |t|
      t.integer :cod_lab
      t.integer :cod_equip
      t.integer :quantidade

      t.timestamps
    end
  end
end
