class AddProgramaIdToLaboratorios < ActiveRecord::Migration[5.0]
  def change
    add_column :laboratorios, :programa_id, :integer
  end
end
