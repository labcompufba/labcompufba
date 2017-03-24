class AddPesqToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pesq, :boolean
  end
end
