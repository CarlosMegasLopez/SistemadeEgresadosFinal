class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.references :user, foreign_key: true
      t.string :titulo_logro
      t.string :imagen_logro
      t.text :descripcion_logro

      t.timestamps
    end
  end
end
