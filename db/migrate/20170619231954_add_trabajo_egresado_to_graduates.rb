class AddTrabajoEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :trabajo_egresado, :text
  end
end
