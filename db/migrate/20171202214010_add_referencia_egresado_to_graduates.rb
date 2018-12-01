class AddReferenciaEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :referencia_egresado, :text
  end
end
