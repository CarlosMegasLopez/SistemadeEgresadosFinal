class AddHijosEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :hijos_egresado, :string
  end
end
