class AddNombreToRoulettes < ActiveRecord::Migration[5.0]
  def change
    add_column :roulettes, :nombre_carrusel, :string
  end
end
