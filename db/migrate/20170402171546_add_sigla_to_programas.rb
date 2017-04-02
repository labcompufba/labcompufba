class AddSiglaToProgramas < ActiveRecord::Migration[5.0]
  def change
    add_column :programas, :sigla, :string
  end
end
