class AddInteriorEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :interior_egresado, :string
  end
end
