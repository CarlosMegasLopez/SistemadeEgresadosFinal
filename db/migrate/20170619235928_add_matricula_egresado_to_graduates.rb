class AddMatriculaEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :matricula_egresado, :string
  end
end
