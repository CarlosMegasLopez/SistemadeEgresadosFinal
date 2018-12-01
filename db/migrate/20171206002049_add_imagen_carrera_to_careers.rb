class AddImagenCarreraToCareers < ActiveRecord::Migration[5.0]
  def change
    add_column :careers, :imagen_carrera, :string
  end
end
