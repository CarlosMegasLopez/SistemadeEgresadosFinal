class CreateRoulettes < ActiveRecord::Migration[5.0]
  def change
    create_table :roulettes do |t|
      t.references :user, foreign_key: true
      t.string :titulo_carrusel
      t.string :subtitulo_carrusel
      t.text :cuerpo_carrusel
      t.string :imagen_carrusel

      t.timestamps
    end
  end
end
