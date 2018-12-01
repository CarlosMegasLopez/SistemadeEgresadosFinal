class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :nombre_categoria
      t.string :color_categoria

      t.timestamps
    end
  end
end
