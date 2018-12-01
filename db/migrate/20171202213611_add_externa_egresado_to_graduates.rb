class AddExternaEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :externa_egresado, :string
  end
end
