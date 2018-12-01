class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :career_id
      t.string :nombre_egresado
      t.string :apellido_paterno_egresado
      t.string :apellido_materno_egresado
      t.string :sexo_egresado
      t.string :correo_electronico_egresado
      t.string :status_egresado

      t.timestamps
    end
  end
end
