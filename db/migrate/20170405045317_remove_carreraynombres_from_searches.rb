class RemoveCarreraynombresFromSearches < ActiveRecord::Migration[5.0]
  def change
    remove_column :searches, :career_id, :string
    remove_column :searches, :nombre_egresado, :string
    remove_column :searches, :apellido_paterno_egresado, :string
    remove_column :searches, :apellido_materno_egresado, :string
  end
end
