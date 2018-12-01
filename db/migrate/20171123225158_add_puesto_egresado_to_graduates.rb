class AddPuestoEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :puesto_egresado, :string
  end
end
