class AddCurpEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :curp_egresado, :string
  end
end
