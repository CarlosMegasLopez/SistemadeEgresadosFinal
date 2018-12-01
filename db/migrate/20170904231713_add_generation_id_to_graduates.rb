class AddGenerationIdToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :generation_id, :integer
  end
end
