class AddMatriculaEgresadoToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :matricula_egresado, :string
  end
end
