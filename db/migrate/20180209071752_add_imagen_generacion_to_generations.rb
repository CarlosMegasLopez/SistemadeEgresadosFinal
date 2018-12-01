class AddImagenGeneracionToGenerations < ActiveRecord::Migration[5.0]
  def change
    add_column :generations, :imagen_generacion, :string
  end
end
