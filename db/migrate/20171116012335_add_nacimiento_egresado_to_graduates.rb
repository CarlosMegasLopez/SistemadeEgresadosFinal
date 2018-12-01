class AddNacimientoEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :nacimiento_egresado, :string
  end
end
