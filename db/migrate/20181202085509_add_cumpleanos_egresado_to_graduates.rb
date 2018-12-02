class AddCumpleanosEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :cumpleanos_egresado, :string
  end
end
