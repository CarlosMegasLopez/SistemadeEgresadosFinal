class AddPromedioEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :promedio_egresado, :string
  end
end
