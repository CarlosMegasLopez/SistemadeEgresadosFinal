class AddFacultadfieldToAchievements < ActiveRecord::Migration[5.0]
  def change
    add_column :achievements, :facultad_logro, :string
  end
end
