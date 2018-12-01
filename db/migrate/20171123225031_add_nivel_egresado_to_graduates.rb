class AddNivelEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :nivel_egresado, :string
  end
end
