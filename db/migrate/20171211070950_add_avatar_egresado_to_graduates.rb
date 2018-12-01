class AddAvatarEgresadoToGraduates < ActiveRecord::Migration[5.0]
  def change
    add_column :graduates, :avatar_egresado, :string
  end
end
