class AddEstadoCivilEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :estado_civil_egresado, :string
  end
end
