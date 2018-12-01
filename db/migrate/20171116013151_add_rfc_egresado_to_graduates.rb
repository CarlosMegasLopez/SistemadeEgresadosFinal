class AddRfcEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :rfc_egresado, :string
  end
end
