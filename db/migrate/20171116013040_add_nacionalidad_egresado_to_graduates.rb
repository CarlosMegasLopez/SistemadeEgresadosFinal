class AddNacionalidadEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :nacionalidad_egresado, :string
  end
end
