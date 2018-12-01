class AddTeltrabajoEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :teltrabajo_egresado, :string
  end
end
